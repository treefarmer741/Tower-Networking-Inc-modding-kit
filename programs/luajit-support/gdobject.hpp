#pragma once

#include <lua.hpp>
#include <api.hpp>


static const char* GDObjectMetaTable = "GDObject";

Object check_gdobject(lua_State *L, int pos);
Object test_gdobject(lua_State *L, int pos);
int push_gd_object(lua_State *L, Object object);
void push_gd_object_metatable(lua_State *L);
