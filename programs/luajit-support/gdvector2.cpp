#include <lua.hpp>
#include <unordered_set>

#include "gdvector2.hpp"
#include "utils.hpp"
#include "tower.hpp"


// Must be a static list as there is no way to check what methods exist at runtime in Godot for special types like Array.
// This was generated from https://github.com/godotengine/godot/tree/master/doc/classes using "tools/extract_valid_names_from_docs.py"
static std::unordered_set<std::string_view> _vector2_method_names = {"abs", "angle", "angle_to", "angle_to_point", "aspect", "bezier_derivative", "bezier_interpolate", "bounce", "ceil", "clamp", "clampf", "cross", "cubic_interpolate", "cubic_interpolate_in_time", "direction_to", "distance_squared_to", "distance_to", "dot", "floor", "from_angle", "is_equal_approx", "is_finite", "is_normalized", "is_zero_approx", "length", "length_squared", "lerp", "limit_length", "max", "max_axis_index", "maxf", "min", "min_axis_index", "minf", "move_toward", "normalized", "orthogonal", "posmod", "posmodv", "project", "reflect", "rotated", "round", "sign", "slerp", "slide", "snapped", "snappedf"};


Vector2* check_gdvector2(lua_State *L, int pos) {
    return (Vector2*)luaL_checkudata(L, pos, GDVector2MetaTable);
}
Vector2* test_gdvector2(lua_State *L, int pos) {
    return (Vector2*)luaL_testudata(L, pos, GDVector2MetaTable);
}
int push_gd_vector2(lua_State *L, Vector2 vector) {
    Vector2* ud = (Vector2*)lua_newuserdata(L, sizeof(Vector2));
    *ud = vector;

    push_gd_vector2_metatable(L);
    lua_setmetatable(L, -2);

    return 1;
}

void push_gd_vector2_metatable(lua_State *L) {
    if (luaL_newmetatable(L, GDVector2MetaTable)) {
        lua_pushstring(L, "create");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            return push_gd_variant(L, Vector2());
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDVector2MetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Vector2* vector = check_gdvector2(L, 1);

            lua_getmetatable(L, 1);
            // Stack: gdarray, index, GDArrayMetaTable
            lua_pushvalue(L, 2);
            // Stack: gdarray, index, GDArrayMetaTable, index
            lua_gettable(L, -2);
            // Stack: gdarray, index, GDArrayMetaTable, value
            if (!lua_isnil(L, -1))
                return 1;
            lua_pop(L, 2);
            // Stack: gdvector, index

            if (lua_isstring(L, 2)) {
                std::string name = lua_tostring(L, 2);
                if (name == "x") {
                    lua_pushnumber(L, vector->x);
                    return 1;
                } else if (name == "y") {
                    lua_pushnumber(L, vector->y);
                    return 1;
                } else {
                    if (_vector2_method_names.contains(name)) {
                        lua_pushcclosure(L, variant_self_call, 1);
                        return 1;
                    }
                }
            }

            lua_pushnil(L);
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__newindex");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Vector2* vector = check_gdvector2(L, 1);
            if (lua_isstring(L, 2)) {
                std::string name = lua_tostring(L, 2);
                if (name == "x") {
                    vector->x = luaL_checkinteger(L, 3);
                    return 1;
                } else if (name == "y") {
                    vector->y = luaL_checkinteger(L, 3);
                    return 1;
                }
            }
            return luaL_error(L, "GDVector2.__newindex only supports string keys but got %s", luaL_typename(L, 2));
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Vector2* vector = check_gdvector2(L, 1);
            lua_pushfstring(L, "GDVector2(%f, %f)", vector->x, vector->y);
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "clone");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Vector2* vector = check_gdvector2(L, 1);
            return push_gd_variant(L, *vector);
        });
        lua_settable(L, -3);
    }
}
