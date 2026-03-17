#include <lua.hpp>
#include <cstring>

#include "gdarray.hpp"
#include "utils.hpp"
#include "tower.hpp"


Array* check_gdarray(lua_State *L, int pos) {
    return (Array*)luaL_checkudata(L, pos, GDArrayMetaTable);
}
Array* test_gdarray(lua_State *L, int pos) {
    return (Array*)luaL_testudata(L, pos, GDArrayMetaTable);
}
int push_gd_array(lua_State *L, Array array) {
    // `Array` just holds an index to the real array.
    Array* ud = (Array*)lua_newuserdata(L, sizeof(Array));
    // `Array` has assign operator, so we use memcpy to get around it.
    memcpy(ud, &array, sizeof(Array));

    push_gd_array_metatable(L);
    lua_setmetatable(L, -2);

    return 1;
}

void push_gd_array_metatable(lua_State *L) {
    if (luaL_newmetatable(L, GDArrayMetaTable)) {
        lua_pushstring(L, "create");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            return push_gd_variant(L, Array::Create());
        });
        lua_settable(L, -3);

        lua_pushstring(L, "iter");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gdarray
            check_gdarray(L, 1);
            lua_pushcfunction(L, [](lua_State *L) -> int {
                // Stack: gdarray, i
                Array* array = check_gdarray(L, 1);
                int i = lua_tointeger(L, 2) + 1;
                if (i >= array->size())
                    return 0;
                lua_pushinteger(L, i);
                // Stack: gdarray, i, i+1
                Variant value = array->at(i);
                int nvalue = push_gd_variant(L, value);
                // Stack: gdarray, i, i+1, value
                return 1+nvalue;
            });
            // Stack: gdarray, iterator
            lua_insert(L, -2);
            // Stack: iterator, gdarray
            lua_pushinteger(L, -1);
            // Stack: iterator, gdarray, -1
            return 3;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDArrayMetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gdarray, index
            Array array = *check_gdarray(L, 1);
            if (lua_isnumber(L, 2)) {
                lua_Number n = lua_tonumber(L, 2);
                if (std::fmod(n, 1) > 0)
                    luaL_argerror(L, 2, "expected integer but got number");  // Never returns.
                int i = (int)n;
                int size = array.size();
                int iabs = i < 0 ? size + i : i;  // array gets weird after trying to use negative indicies, godot-sandbox things ¯\_(ツ)_/¯
                if (iabs < 0 || iabs >= size) {
                    return luaL_error(L, "GDArray index (%d) out of bounds (%d elements)", i, size-1);  // Never returns.
                }
                if (!((Mod)get_node()).array_value_allowed(array, iabs)) {
                    return luaL_error(L, "Object is not allowed: GDArray[%d]", iabs);  // This does not return!
                }
                ArrayProxy elem = array.operator[](iabs);
                return push_gd_variant(L, elem.get());
            } else if (lua_isstring(L, 2)) {
                const char* key = luaL_checkstring(L, 2);
                lua_getmetatable(L, 1);
                // Stack: gdarray, index, GDArrayMetaTable
                lua_getfield(L, -1, key);
                // Stack: gdarray, index, GDArrayMetaTable, value
                if (!lua_isnil(L, -1))
                    return 1;
                lua_pop(L, 2);
                // Stack: gdarray, index
                lua_pushcclosure(L, variant_self_call, 1);
                return 1;
            }
            return 0;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__newindex");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gdarray, index, value
            Array* array = check_gdarray(L, 1);
            int i = luaL_checkint(L, 2);
            Variant value = to_gd_variant(L, 3);
            int size = array->size();

            if (i < 0 || i > size)
                return luaL_error(L, "GDArray new index (%d) out of bounds (0-%d+1)", i, size-1);  // Never returns.
            if (i == size) {
                array->push_back(value);
            } else {
                ArrayProxy elem = array->operator[](i);
                elem.operator=(value);
            }
            return 0;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__len");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gdarray
            Array* array = check_gdarray(L, 1);
            lua_pushinteger(L, array->size());
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Array* array = test_gdarray(L, 1);
            if (array == NULL) {
                lua_pushfstring(L, "GDArray: INVALID");
            } else {
                lua_pushfstring(L, "GDArray: %d@%p-%s", array->get_variant_index(), array, array->is_permanent() ? "perm" : "temp");
            }
            return 1;
        });
        lua_settable(L, -3);
    }
}
