#pragma once

#include <lua.hpp>
#include <api.hpp>


static const char* GDDictionaryMetaTable = "GDDictionary";

Dictionary* check_gddictionary(lua_State *L, int pos);
Dictionary* test_gddictionary(lua_State *L, int pos);
int push_gd_dictionary(lua_State *L, Dictionary array);
void push_gd_dictionary_metatable(lua_State *L);
