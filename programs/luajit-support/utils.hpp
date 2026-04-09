#pragma once

#include <lua.hpp>
#include <api.hpp>

/// @brief Expects method name as string to be sole upvalue
int variant_self_call(lua_State *L) ;

int push_gd_variant(lua_State *L, Variant variant);

Variant to_gd_variant(lua_State *L, int pos);

int debug_stacktrace_handler(lua_State *L);
int pcall_stacktrace(lua_State* L, int nargs, int nret);

void print_lua_stack(lua_State *L);
