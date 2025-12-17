#pragma once

// #include <lua.hpp>
extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
// #include "luajit.h"
}


int lua_modsearcher_lua(lua_State *L);
int lua_modsearchpath(lua_State *L);
