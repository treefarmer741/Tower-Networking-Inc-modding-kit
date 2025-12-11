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
#include "tower.hpp"


inline Object check_gdobject(lua_State *L, int pos) {
    uint64_t* ud = (uint64_t*)luaL_checkudata(L, pos, GDObjectMetaTable);
    Variant v = get_node<Mod>().instance_from_id_(*ud);
    if (v.get_type() == Variant::Type::NIL || !v.as_object().is_valid()) {
        luaL_error(L, "Attempt to index object that is no longer valid.");
    }
    return v.as_object();
}
inline Object test_gdobject(lua_State *L, int pos) {
    uint64_t* ud = (uint64_t*)luaL_testudata(L, pos, GDObjectMetaTable);
    if (ud == NULL)
        return Object(0);
    Variant v = get_node<Mod>().instance_from_id_(*ud);
    return v.as_object();
}
int push_gd_object(lua_State *L, Object object) {
    if (object.address() == 0) {
        lua_pushnil(L);
        return 1;
    }

    uint64_t* ud = (uint64_t*)lua_newuserdata(L, sizeof(uint64_t));
    *ud = uint64_t(object("get_instance_id"));  // object.get_instance_id() wrongly returns int

    if (luaL_newmetatable(L, GDObjectMetaTable)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDObjectMetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Object obj = check_gdobject(L, 1);
            // Variant value = to_gd_variant(L, 2);
            if (lua_isstring(L, 2)) {
                std::string name = lua_tostring(L, 2);
                // We can't catch exceptions from the sandbox, so we check if we are allowed first.
                if (!((Mod)get_node()).is_allowed_property(obj, name)) {
                    luaL_error(L, "Banned property accessed: %s", name.c_str());
                }
                // TODO: We could temporarily cache GDCallable userdata during this VM call.
                // TODO: GDNameCall instead of GDCallable to handle `obj:method()`, which can bypass GDCallable using obj.call/obj.callv (more performant and Lua idiomatic)
                
                int c = push_gd_variant(L, obj.get(name));
                printf("GDObject.__index(%s) = #%d ", name.c_str(), c);
                print_lua_stack(L);
                return c;
            }
            lua_pushnil(L);
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Object obj = test_gdobject(L, 1);
            if (!obj.is_valid()) {
                lua_pushfstring(L, "GodotObject: INVALID");
            } else {
                String s = obj.to_string();
                lua_pushfstring(L, "GodotObject: %s", s.utf8().c_str());
            }
            return 1;
        });
        lua_settable(L, -3);
    }
    lua_setmetatable(L, -2);

    return 1;
}

inline Callable* check_gdcallable(lua_State *L, int pos) {
    return (Callable*)luaL_checkudata(L, pos, GDCallableMetaTable);
}
inline Callable* test_gdcallable(lua_State *L, int pos) {
    return (Callable*)luaL_testudata(L, pos, GDCallableMetaTable);
}
int push_gd_callable(lua_State *L, Callable callable) {
    // `Callable` just holds an index to the real callable.
    Callable* ud = (Callable*)lua_newuserdata(L, sizeof(Callable));
    *ud = callable;

    if (luaL_newmetatable(L, GDCallableMetaTable)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDCallableMetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__call");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: GDCallable, args...
            Callable* ud = check_gdcallable(L, 1);
            Variant v = Variant(*ud);
            const int args_pos = 2;  // Position on stack where arguments start.
            int nargs = lua_gettop(L) - (args_pos-1);
            Variant result;
            switch (nargs) {
                case 0: result = ud->call(); break;
                case 1: result = ud->call(to_gd_variant(L, args_pos)); break;
                case 2: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1)); break;
                case 3: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2)); break;
                case 4: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3)); break;
                case 5: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4)); break;
                case 6: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4), to_gd_variant(L, args_pos+5)); break;
                case 7: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4), to_gd_variant(L, args_pos+5), to_gd_variant(L, args_pos+6)); break;
                case 8: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4), to_gd_variant(L, args_pos+5), to_gd_variant(L, args_pos+6), to_gd_variant(L, args_pos+7)); break;
                // godot-sandbox only supports up to 8 args.
                // https://github.com/libriscv/godot-sandbox/blob/1553c9f988f9e174e843143a932f5ba488c9ccdc/src/sandbox_syscalls.cpp#L105
                // We could get around this by creating a godot array and using `ud->call("callv", args)`
                default:
                    return luaL_error(L, "GodotCallable.__call Too many arguments");  // luaL_error never returns.
            }
            return push_gd_variant(L, result);
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Callable* ud = test_gdcallable(L, 1);
            if (ud == NULL) {
                lua_pushfstring(L, "GodotCallable: INVALID");
            } else {
                lua_pushfstring(L, "GodotCallable: %d @ %p", ud->get_variant_index(), ud);  // TODO: Can we get the name and/or signature?
            }
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
    printf("to_gd_variant(L, %d) ", pos);
    print_lua_stack(L);
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
    fflush(stdout);
}
