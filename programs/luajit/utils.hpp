#pragma once

extern "C" {
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
// #include <luajit.h>
}
#include <api.hpp>


int push_gd_variant(lua_State *L, Variant variant);

Variant to_gd_variant(lua_State *L, int pos);

int debug_stacktrace_handler(lua_State *L);
int pcall_stacktrace(lua_State* L, int nargs, int nret);

void print_lua_stack(lua_State *L);
