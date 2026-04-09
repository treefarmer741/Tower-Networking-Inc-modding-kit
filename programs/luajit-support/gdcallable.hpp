#pragma once

#include <lua.hpp>
#include <api.hpp>


static const char* GDCallableMetaTable = "GDCallable";

Callable* check_gdcallable(lua_State *L, int pos);
Callable* test_gdcallable(lua_State *L, int pos);
int push_gd_callable(lua_State *L, Callable callable);
void push_gd_callable_metatable(lua_State *L);
