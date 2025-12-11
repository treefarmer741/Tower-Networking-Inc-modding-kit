#pragma once

// #include <lua.hpp>
extern "C" {
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
// #include <luajit.h>
}
#include <api.hpp>


static const char* GDCallableMetaTable = "GodotCallable";

Callable* check_gdcallable(lua_State *L, int pos);
Callable* test_gdcallable(lua_State *L, int pos);
int push_gd_callable(lua_State *L, Callable callable);
