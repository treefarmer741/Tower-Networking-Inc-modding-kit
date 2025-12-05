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
            int64_t* ud = (int64_t*)luaL_checkudata(L, 1, MetaTableName);
            Variant v = get_node<Mod>().instance_from_id_(*ud);
            if (v.get_type() == Variant::Type::NIL || !v.as_object().is_valid()) {
                luaL_error(L, "Attempt to index object that is no longer valid.");
            }
            Object obj = v.as_object();
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
            int64_t* ud = (int64_t*)luaL_checkudata(L, 1, MetaTableName);
            Variant v = get_node<Mod>().instance_from_id_(*ud);
            if (v.get_type() == Variant::Type::NIL || !v.as_object().is_valid()) {
                luaL_error(L, "Attempt to index object that is no longer valid.");
            }
            Object obj = v.as_object();
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
            Callable* ud = (Callable*)luaL_checkudata(L, 1, MetaTableName);
            Variant v = Variant(*ud);
            int nargs = lua_gettop(L)-1;
            Variant result;
            switch (nargs) {
                case 0: result = ud->call(); break;
                case 1: result = ud->call(to_gd_variant(L, 2)); break;
                case 2: result = ud->call(to_gd_variant(L, 2), to_gd_variant(L, 3)); break;
                case 3: result = ud->call(to_gd_variant(L, 2), to_gd_variant(L, 3), to_gd_variant(L, 4)); break;
                case 4: result = ud->call(to_gd_variant(L, 2), to_gd_variant(L, 3), to_gd_variant(L, 4), to_gd_variant(L, 5)); break;
                case 5: result = ud->call(to_gd_variant(L, 2), to_gd_variant(L, 3), to_gd_variant(L, 4), to_gd_variant(L, 5), to_gd_variant(L, 6)); break;
                case 6: result = ud->call(to_gd_variant(L, 2), to_gd_variant(L, 3), to_gd_variant(L, 4), to_gd_variant(L, 5), to_gd_variant(L, 6), to_gd_variant(L, 7)); break;
                default:
                    return luaL_error(L, "GodotCallable.__call Too many arguments");
            }
            return push_gd_variant(L, result);
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Callable* ud = (Callable*)luaL_checkudata(L, 1, MetaTableName);
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
