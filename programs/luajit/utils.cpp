// #include <lua.hpp>
extern "C" {
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
// #include <luajit.h>
}
#include <api.hpp>
#include <cstring>
#include <string>
#include <stdexcept>

#include "utils.hpp"
#include "tower.hpp"
#include "gdobject.hpp"
#include "gdcallable.hpp"


int push_gd_variant(lua_State *L, Variant variant) {
    switch (variant.get_type()) {
        case Variant::Type::NIL:
            lua_pushnil(L);
            return 1;
        case Variant::Type::BOOL:
            lua_pushboolean(L, bool(variant));
            return 1;
        case Variant::Type::INT:
            lua_pushinteger(L, lua_Integer(variant));
            return 1;
        case Variant::Type::FLOAT:
            lua_pushnumber(L, lua_Number(variant));
            return 1;
        case Variant::Type::STRING:
        case Variant::Type::STRING_NAME:
        case Variant::Type::NODE_PATH: {
            std::string s = variant.as_string().utf8();
            lua_pushlstring(L, s.c_str(), s.size());
            return 1;
        }
        case Variant::Type::OBJECT:
            return push_gd_object(L, variant.as_object());
        case Variant::Type::CALLABLE:
            return push_gd_callable(L, variant.as_callable());
        default:
            printf("push_gd_type() Unhandled variant type %d\n", variant.get_type());
            return 0;
    }
}

static Variant gd_callable_lua(uint64_t Lptr, Array args) {
    lua_State* L = (lua_State*)Lptr;
    // ENSURE the function remains on the stack!
    // Stack: function
    lua_settop(L, 1);  // Ensure nothing was accidentally left on the stack.
    int nargs = 0;
    for (int i = 0; i < args.size(); i++) {
        nargs += push_gd_variant(L, args[i]);
    }
    // Stack: function, args...
    
    if (pcall_stacktrace(L, nargs, LUA_MULTRET) != 0) {
        // Stack: function, err_str
        const char *err = lua_tostring(L, -1);
        printf("Lua exec error: %s\n", err);
        lua_pop(L, 1);
        // Stack: function
        throw std::runtime_error("Lua exec error");  // Hopefully propagate the error through godot.
    } else {
        // Stack: function, ...
        int nret = lua_gettop(L) - 1;
        if (nret > 0) {
            // NOTE: This only takes the first return value, as godot only supports single returned values.
            //       We don't try make an array out of all of them, as that might be confusing to the user.
            return to_gd_variant(L, 1);
        }
        return Nil;
    }
}

Callable to_gd_callable(lua_State *L, int pos) {
    if (!lua_isfunction(L, pos)) {
        luaL_error(L, "Expected function");  // This does not return!
        return Nil;
    }

    // FIXME: There is no clean-up, as the lifetime of a Callable is unknown.
    //        We are at least caching so it's not as bad.
    //        But there are cases that this doesn't cache, eg `some_gd_func(function() end)`

    lua_getregistry(L);
    // Stack: ..., LUA_REGISTRY
    lua_pushvalue(L, pos);
    // Stack: ..., LUA_REGISTRY, function
    lua_gettable(L, -2);
    // Stack: ..., LUA_REGISTRY, value
    lua_State* co;
    if (!lua_isthread(L, -1)) {
        // Stack: ..., LUA_REGISTRY, value
        lua_pop(L, 1);
        // Create new lua thread (aka coroutine)
        co = lua_newthread(L);
        // Stack: ..., LUA_REGISTRY, co
        // Put the function in the new thread's stack.
        lua_pushvalue(L, pos);
        // Stack: ..., LUA_REGISTRY, co, function
        lua_xmove(L, co, 1);
        // Stack: ..., LUA_REGISTRY, co

        // Stack: ..., LUA_REGISTRY, co
        lua_pushvalue(L, pos);
        // Stack: ..., LUA_REGISTRY, co, function
        lua_pushvalue(L, -2);
        // Stack: ..., LUA_REGISTRY, co, function, co
        lua_settable(L, -4);
        // Stack: ..., LUA_REGISTRY, co
        lua_pop(L, 2);
        // Stack: ...
    } else {
        // Stack: ..., LUA_REGISTRY, co
        lua_State* co = lua_tothread(L, -1);
        lua_pop(L, 2);
        // Stack: ...
    }

    return get_node<Mod>().callable_args_to_array(Callable::Create(gd_callable_lua, Variant((uint64_t)co)));
}

Variant to_gd_variant(lua_State *L, int pos) {
    int ltype = lua_type(L, pos);
    switch (ltype) {
        case LUA_TNIL:
            return Nil;
        case LUA_TBOOLEAN:
            return Variant(lua_toboolean(L, pos));
        // Omitted LUA_TLIGHTUSERDATA, no use for it.
        case LUA_TNUMBER:
            return Variant(lua_tonumber(L, pos));
        case LUA_TSTRING:
            size_t len;
            return Variant(std::string(lua_tolstring(L, pos, &len), len));
        // TODO: LUA_TTABLE
        case LUA_TFUNCTION:
            return to_gd_callable(L, pos);
        case LUA_TUSERDATA:
            if (Object obj = test_gdobject(L, pos); obj.is_valid())
                return obj;

            if (Callable* ud = test_gdcallable(L, pos))
                return *ud;
            
            luaL_error(L, "Can not convert userdata to godot variant.");  // This never returns!
            return Nil;
        // Omitted LUA_TTHREAD, no use for it.
        default:
            printf("to_gd_variant() Unhandled lua type: %s", lua_typename(L, ltype));
            break;
    }
    return Nil;
}

// From: https://github.com/sydlawrence/CorsixTH-HTML5-Port/blob/95d272e0ad27758fed7d231d8ab7f79aa4b0773f/source/CorsixTH/Src/main.cpp#L201
int debug_stacktrace_handler(lua_State *L) {
    // ..., err_obj
    lua_insert(L, 1);
    // err_obj, ...
    lua_settop(L, 1);
    // err_obj

    lua_getglobal(L, "tostring");
    lua_insert(L, 1);
    lua_call(L, 1, 1);
    // err_str

    lua_getglobal(L, "debug");
    lua_getfield(L, -1, "traceback");
    // err_str, debug, traceback
    lua_remove(L, -2);
    // err_str, traceback
    lua_insert(L, 1);
    // traceback, err_str
    lua_pushinteger(L, 2);
    // traceback, err_str, 2
    lua_call(L, 2, 1);
    // stacktrace_str

    return 1;
}

int pcall_stacktrace(lua_State* L, int nargs, int nret) {
	int hpos = lua_gettop(L) - nargs;
	lua_pushcfunction(L, debug_stacktrace_handler);
	lua_insert(L, hpos);
	int ret = lua_pcall(L, nargs, nret, hpos);
	lua_remove(L, hpos);
	return ret;
}

// Helpful for debugging the lua stack, but otherwise not used.
void print_lua_stack(lua_State *L) {
    printf("Lua state stack for %p:\n", L);
    int top = lua_gettop(L);
    for (int i=1; i <= top; i++) {
        printf("%d\t%s\t", i, luaL_typename(L,i));
        switch (lua_type(L, i)) {
            case LUA_TNIL:
                printf("%s\n", "nil");
                break;
            case LUA_TBOOLEAN:
                printf("%s\n", (lua_toboolean(L, i) ? "true" : "false"));
                break;
            case LUA_TNUMBER:
                printf("%g\n", lua_tonumber(L, i));
                break;
            case LUA_TSTRING:
                printf("%s\n", lua_tostring(L, i));
                break;
            case LUA_TUSERDATA:
                printf("%p", lua_topointer(L, i));
                if (Object obj = test_gdobject(L, i); obj.is_valid())
                    printf("\tGDObject: %p", (void*)obj.address());
                if (Callable* ud = test_gdcallable(L, i))
                    printf("\tGDCallable: %d @ %p", ud->get_variant_index(), ud);
                printf("\n");
                break;
            default:
                printf("%p\n", lua_topointer(L,i));
                break;
        }
    }
}
