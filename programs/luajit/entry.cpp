#include <api.hpp>
#include <cstring>
#include <string>
#include <iostream>

#include <lua.hpp>

#include "tower.hpp"
#include "utils.hpp"
#include "gdobject.hpp"
#include "gdarray.hpp"
#include "gdcallable.hpp"
#include "luamodpackage.hpp"


EXTERN_SYSCALL(uint64_t, sys_node_create, Node_Create_Shortlist, const char *, size_t, const char *, size_t);


static lua_State *L;

static Variant set_lua_source(String code, String path) {
    if (L == NULL) {
        printf("`set_lua_source()` but the lua state == NULL\n");
        return Nil;
    }

    const std::string src = code.utf8();
    const std::string name = "@" + path.utf8();
    if (luaL_loadbuffer(L, src.c_str(), src.size(), name.c_str()) != 0) {
        const char *err = lua_tostring(L, -1);
        printf("Lua load error: %s\n", err);
        lua_pop(L, 1);
        return Nil;
    }
    
    if (pcall_stacktrace(L, 0, 0) != 0) {
        const char *err = lua_tostring(L, -1);
        printf("Lua exec error: %s\n", err);
        lua_pop(L, 1);
        return Nil;
    }
    
    return Nil;
}

#define DEFINE_LUA_CALLBACK_0(name) \
    static Variant name() { \
        lua_settop(L, 0); \
        lua_getglobal(L, #name); \
        if (!lua_isfunction(L, -1)) { \
            lua_pop(L, 1); \
            return Nil; \
        } \
        if (pcall_stacktrace(L, 0, 0) != 0) { \
            const char *err = lua_tostring(L, -1); \
            printf("Lua error: %s\n", err); \
            lua_pop(L, 1); \
        } \
        return Nil; \
    }
#define DEFINE_LUA_CALLBACK_1(name, type1, param1) \
    static Variant name(type1 param1) { \
        lua_settop(L, 0); \
        lua_getglobal(L, #name); \
        if (!lua_isfunction(L, -1)) { \
            lua_pop(L, 1); \
            return Nil; \
        } \
        int nargs = push_gd_variant(L, Variant(param1)); \
        if (pcall_stacktrace(L, nargs, 0) != 0) { \
            const char *err = lua_tostring(L, -1); \
            printf("Lua error: %s\n", err); \
            lua_pop(L, 1); \
        } \
        return Nil; \
    }

DEFINE_LUA_CALLBACK_0(on_mod_load)
DEFINE_LUA_CALLBACK_0(on_engine_load)
DEFINE_LUA_CALLBACK_0(on_game_state_ready)
DEFINE_LUA_CALLBACK_0(on_game_host_eod)

DEFINE_LUA_CALLBACK_1(on_game_tick, double, delta)
DEFINE_LUA_CALLBACK_1(on_player_input, InputEvent, event)
DEFINE_LUA_CALLBACK_1(on_device_spawned, Node, device)
DEFINE_LUA_CALLBACK_1(on_user_spawned, Node, user)
DEFINE_LUA_CALLBACK_1(on_location_spawned, Node, location)

static void setup_lua_state() {
    L = luaL_newstate();
    luaL_openlibs(L);

    Mod mod = get_node<Mod>();
    if (push_gd_variant(L, mod) != 1)
        luaL_error(L, "Failed to push Mod object.");
    lua_setglobal(L, "Mod");

    if (push_gd_variant(L, (ModApiV1)mod.api_v1()) != 1)
        luaL_error(L, "Failed to push ModApiV1 object.");
    lua_setglobal(L, "ModApiV1");

    if (push_gd_variant(L, (ModFileSystem)mod.filesystem()) != 1)
        luaL_error(L, "Failed to push ModFileSystem object.");
    lua_setglobal(L, "ModFileSystem");

    if (push_gd_variant(L, (Engine)Engine::get_singleton()) != 1)
        luaL_error(L, "Failed to push Engine object.");
    lua_setglobal(L, "Engine");

    push_gd_object_metatable(L);
    lua_setglobal(L, "Object");

    push_gd_array_metatable(L);
    lua_setglobal(L, "Array");

    push_gd_callable_metatable(L);
    lua_setglobal(L, "Callable");

    lua_pushcfunction(L, [](lua_State *L) -> int {
        std::string classname = luaL_checkstring(L, 1);
        std::string path = luaL_checkstring(L, 2);
        return push_gd_object(L, Object(sys_node_create(Node_Create_Shortlist::CREATE_CLASSDB, classname.data(), classname.size(), path.data(), path.size())));
    });
    lua_setglobal(L, "create_node");

    lua_getglobal(L, "package");
    // Stack: package
    lua_pushstring(L, "mod://?.lua;mod://?/init.lua");
    // Stack: package, string
    lua_setfield(L, -2, "path");
    // Stack: package
    lua_pushcfunction(L, lua_modsearchpath);
    // Stack: package, lua_modsearchpath
    lua_setfield(L, -2, "searchpath");
    // Stack: package
    lua_newtable(L);
    // Stack: package, table
    lua_pushcfunction(L, lua_modsearcher_lua);
    // Stack: package, table, lua_modsearcher_lua
    lua_rawseti(L, -2, lua_objlen(L, -2) + 1);
    // Stack: package, table
    lua_setfield(L, -2, "loaders");
    // Stack: package
    lua_pop(L, 1);
    // Stack:
}

int main() {
    // stdout line buffering, to match TNI mod output buffering.
    setvbuf(stdout, NULL, _IOLBF, BUFSIZ);

    setup_lua_state();
    
    // Only called for luajit.elf
    ADD_API_FUNCTION(set_lua_source, "", "");

    ADD_API_FUNCTION(on_mod_load, "", "", "");
    ADD_API_FUNCTION(on_engine_load, "", "", "");
    ADD_API_FUNCTION(on_game_state_ready, "", "", "");
    ADD_API_FUNCTION(on_game_host_eod, "", "", "");

    ADD_API_FUNCTION(on_game_tick, "", "", "");
    ADD_API_FUNCTION(on_player_input, "", "", "");
    ADD_API_FUNCTION(on_device_spawned, "", "", "");
    ADD_API_FUNCTION(on_user_spawned, "", "", "");
    ADD_API_FUNCTION(on_location_spawned, "", "", "");

    halt();
}