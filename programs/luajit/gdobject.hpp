#pragma once

// #include <lua.hpp>
extern "C" {
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
// #include <luajit.h>
}
#include <api.hpp>


static const char* GDObjectMetaTable = "GodotObject";

Object check_gdobject(lua_State *L, int pos);
Object test_gdobject(lua_State *L, int pos);
int push_gd_object(lua_State *L, Object object);
