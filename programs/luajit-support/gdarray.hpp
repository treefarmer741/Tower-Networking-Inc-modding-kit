#pragma once

#include <lua.hpp>
#include <api.hpp>


static const char* GDArrayMetaTable = "GDArray";

Array* check_gdarray(lua_State *L, int pos);
Array* test_gdarray(lua_State *L, int pos);
int push_gd_array(lua_State *L, Array array);
void push_gd_array_metatable(lua_State *L);
