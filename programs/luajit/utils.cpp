#include <api.hpp>
#include <cstring>
#include <string>

// #include <lua.hpp>
extern "C" {
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
// #include <luajit.h>
}

#include "utils.hpp"
#include "Mod.hpp"
#include "ModApiV1.hpp"


/// Checks if the userdata at pos, has the metatable of LUA_REGISTRY[metatable_name]
/// If it does not, NULL is returned.
template<typename T>
T lua_optuserdata_t(lua_State *L, int pos, const char* metatable_name) {
    lua_getmetatable(L, pos);
    luaL_getmetatable(L, metatable_name);
    T ud = NULL;
    if (lua_rawequal(L, -1, -2)) {
        ud = (T)lua_touserdata(L, pos);
    }
    lua_pop(L, 2);
    return ud;
}
/// Checks if the userdata at pos, has the metatable of LUA_REGISTRY[metatable_name]
/// If it does not, a lua error is raised.
template<typename T>
T lua_touserdata_t(lua_State *L, int pos, const char* metatable_name) {
    luaL_getmetatable(L, metatable_name);
    lua_getmetatable(L, pos);
    if (!lua_rawequal(L, -1, -2)) {
        lua_getfield(L, -1, "__name");
        const char* found_name = "userdata";
        if (lua_isstring(L, -1)) {
            found_name = lua_tostring(L, -1);
        }
        // We don't bother popping, we're about to get cleaned up.
        luaL_error(L, "Expected %s but found %s", metatable_name, found_name);
        // Unreachable
        // We don't return to prevent possible warnings & errors.
    }
    T ud = (T)lua_touserdata(L, pos);
    lua_pop(L, 2);
    return ud;
}

int push_gd_object(lua_State *L, Object object) {
    static const char* MetaTableName = "GodotObject";
    // TODO: Handle temporary variant

    int64_t* ud = (int64_t*)lua_newuserdata(L, sizeof(int64_t));
    *ud = int64_t(object("get_instance_id"));  // object.get_instance_id() wrongly returns int

    if (luaL_newmetatable(L, MetaTableName)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, MetaTableName);
        lua_settable(L, -3);

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            int64_t* ud = lua_touserdata_t<int64_t*>(L, 1, MetaTableName);
            Object obj = get_node<Mod>()._instance_from_id(*ud);
            // Variant value = to_gd_variant(L, 2);
            if (lua_isstring(L, 2)) {
                std::string value = lua_tostring(L, 2);
                return push_gd_variant(L, obj.get(value));
            }
            lua_pushnil(L);
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            int64_t* ud = lua_touserdata_t<int64_t*>(L, 1, MetaTableName);
            Object obj = get_node<Mod>()._instance_from_id(*ud);
            String s = obj.to_string();
            lua_pushfstring(L, "GodotObject: %s", s.utf8().c_str());
            return 1;
        });
        lua_settable(L, -3);
    }
    lua_setmetatable(L, -2);

    return 1;
}
int push_gd_callable(lua_State *L, Callable callable) {
    static const char* MetaTableName = "GodotCallable";
    // TODO: Handle temporary variant

    // `Callable` just holds an index to the real callable.
    Callable* ud = (Callable*)lua_newuserdata(L, sizeof(Callable));
    *ud = callable;

    if (luaL_newmetatable(L, MetaTableName)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, MetaTableName);
        lua_settable(L, -3);

        lua_pushstring(L, "__call");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Callable* ud = lua_touserdata_t<Callable*>(L, 1, MetaTableName);
            Variant v = Variant(*ud);
            int nargs = lua_gettop(L)-1;
            Variant result;
            switch (nargs) {
                case 0: result = ud->call(); break;
                case 1: result = ud->call(to_gd_variant(L, 2)); break;
                default:
                    return luaL_error(L, "GodotCallable.__call Too many arguments");
            }
            return push_gd_variant(L, result);
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Callable* ud = lua_touserdata_t<Callable*>(L, 1, MetaTableName);
            lua_pushfstring(L, "GodotCallable: %p", ud);  // TODO: Can we get the name and/or signature?
            return 1;
        });
        lua_settable(L, -3);
    }
    lua_setmetatable(L, -2);

    return 1;
}
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
            // TODO: Check if this is ok, lifetime wise.
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
            fflush(stdout);
            return 0;
    }
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
        // TODO: LUA_TFUNCTION
        // TODO: LUA_TUSERDATA (for GodotObject)
        // Omitted LUA_TTHREAD, no use for it.
        default:
            printf("to_gd_variant() Unhandled lua type: %s", lua_typename(L, ltype));
            fflush(stdout);
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
        case LUA_TNUMBER:
            printf("%g\n", lua_tonumber(L,i));
            break;
        case LUA_TSTRING:
            printf("%s\n", lua_tostring(L,i));
            break;
        case LUA_TBOOLEAN:
            printf("%s\n", (lua_toboolean(L, i) ? "true" : "false"));
            break;
        case LUA_TNIL:
            printf("%s\n", "nil");
            break;
        default:
            printf("%p\n", lua_topointer(L,i));
            break;
        }
    }
    fflush(stdout);
}
