#include <api.hpp>
#include <cstring>
#include <string>
#include <iostream>

// #include <lua.hpp>
extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
// #include "luajit.h"
}

#include "utils.hpp"
#include "Mod.hpp"
#include "ModApiV1.hpp"

static lua_State *L;

static Variant set_lua_source(String code, String path) {
    if (L == NULL) {
        printf("`set_lua_source()` but the lua state == NULL\n");
        fflush(stdout);
        return Nil;
    }

    const std::string src = code.utf8();
    const std::string name = "@" + path.utf8();
    if (luaL_loadbuffer(L, src.c_str(), src.size(), name.c_str()) != 0) {
        const char *err = lua_tostring(L, -1);
        printf("Lua load error: %s\n", err);
        fflush(stdout);
        lua_pop(L, 1);
        return Nil;
    }
    
    if (pcall_stacktrace(L, 0, 0) != 0) {
        const char *err = lua_tostring(L, -1);
        printf("Lua exec error: %s\n", err);
        fflush(stdout);
        lua_pop(L, 1);
        return Nil;
    }
    
    return Nil;
}

#define DEFINE_LUA_CALLBACK_0(name) \
    static Variant name() { \
        lua_getglobal(L, #name); \
        if (!lua_isfunction(L, -1)) { \
            lua_pop(L, 1); \
            return Nil; \
        } \
        if (pcall_stacktrace(L, 0, 0) != 0) { \
            const char *err = lua_tostring(L, -1); \
            printf("Lua error: %s\n", err); \
            fflush(stdout); \
            lua_pop(L, 1); \
        } \
        return Nil; \
    }
#define DEFINE_LUA_CALLBACK_1(name, type1, param1) \
    static Variant name(type1 param1) { \
        lua_getglobal(L, #name); \
        if (!lua_isfunction(L, -1)) { \
            lua_pop(L, 1); \
            return Nil; \
        } \
        Variant v_param1 = param1; \
        int nargs = push_gd_variant(L, v_param1); \
        if (pcall_stacktrace(L, nargs, 0) != 0) { \
            const char *err = lua_tostring(L, -1); \
            printf("Lua error: %s\n", err); \
            fflush(stdout); \
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

static int print_and_flush_lua(lua_State *L) {
    // Stack: ...args
    // Get original print function.
    lua_pushlightuserdata(L, (void*)print_and_flush_lua);
    lua_gettable(L, LUA_REGISTRYINDEX);
    // Stack: ...args, base_print
    lua_insert(L, 1);
    // Stack: base_print, ...args
    lua_call(L, lua_gettop(L) - 1, LUA_MULTRET);
    fflush(stdout);  // For some reason, newlines don't imply flush.
	return lua_gettop(L);
}

static void setup_lua_state() {
    L = luaL_newstate();
    luaL_openlibs(L);

    lua_pushlightuserdata(L, (void*)print_and_flush_lua);
    lua_getglobal(L, "print");
    lua_settable(L, LUA_REGISTRYINDEX);
    lua_register(L, "print", print_and_flush_lua);

    Mod mod = get_node<Mod>();
    push_gd_variant(L, mod);
    lua_setglobal(L, "Mod");

    push_gd_variant(L, mod.get_api_v1());
    lua_setglobal(L, "ModApiV1");

    push_gd_variant(L, (ModFileSystem)mod.filesystem());
    lua_setglobal(L, "ModFileSystem");
}

int main() {
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