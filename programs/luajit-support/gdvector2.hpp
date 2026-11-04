#pragma once

#include <lua.hpp>
#include <api.hpp>


static const char* GDVector2MetaTable = "GDVector2";

Vector2* check_gdvector2(lua_State *L, int pos);
Vector2* test_gdvector2(lua_State *L, int pos);
int push_gd_vector2(lua_State *L, Vector2 vector);
void push_gd_vector2_metatable(lua_State *L);
