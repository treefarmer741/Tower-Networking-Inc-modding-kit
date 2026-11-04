#include <lua.hpp>
#include <cstring>

#include "gdpropertyproxy.hpp"
#include "utils.hpp"
#include "tower.hpp"


struct LuaUdPropertyProxy {
    uint64_t instance_id;
    std::string name;
};


LuaPropertyProxy<> check_gdpropertyproxy(lua_State *L, int pos) {
    LuaUdPropertyProxy* ud = (LuaUdPropertyProxy*)luaL_checkudata(L, pos, GDPropertyProxyMetaTable);
    if (ud == NULL) {
        luaL_error(L, "Attempt to index propertyproxy that is no longer valid.");  // luaL_error never returns.
        return LuaPropertyProxy<>(Object(0), "");
    }
    Variant v = get_node<Mod>().instance_from_id_(ud->instance_id);
    if (v.get_type() == Variant::Type::NIL || !v.as_object().is_valid()) {
        luaL_error(L, "Attempt to index propertyproxy that is no longer valid.");  // luaL_error never returns.
        return LuaPropertyProxy<>(Object(0), "");
    }
    return LuaPropertyProxy<>(v.as_object(), ud->name);
}
LuaPropertyProxy<> test_gdpropertyproxy(lua_State *L, int pos) {
    LuaUdPropertyProxy* ud = (LuaUdPropertyProxy*)luaL_testudata(L, pos, GDPropertyProxyMetaTable);
    if (ud == NULL)
        return LuaPropertyProxy<>(Object(0), "");
    Variant v = get_node<Mod>().instance_from_id_(ud->instance_id);
    return LuaPropertyProxy<>(v.as_object(), ud->name);
}
void free_gdpropertyproxy(lua_State *L, int pos) {
    LuaUdPropertyProxy* ud = (LuaUdPropertyProxy*)luaL_testudata(L, pos, GDPropertyProxyMetaTable);
    if (ud == NULL)
        return;
    
    Object obj = get_node<Mod>().instance_from_id_(ud->instance_id).as_object();
    if (obj.is_class("RefCounted")) {
        obj("unreference");
    }

    ud->~LuaUdPropertyProxy();
}
int push_gd_propertyproxy(lua_State *L, Object obj, std::string name) {
    if (!obj.is_valid()) {
        lua_pushnil(L);
        return 1;
    }

    LuaUdPropertyProxy* ud = (LuaUdPropertyProxy*)lua_newuserdata(L, sizeof(LuaUdPropertyProxy));

    new (ud) LuaUdPropertyProxy { .instance_id = obj.get_instance_id(), .name = name };

    push_gd_propertyproxy_metatable(L);
    lua_setmetatable(L, -2);

    if (obj.is_class("RefCounted")) {
        obj("reference");
    }

    return 1;
}

void push_gd_propertyproxy_metatable(lua_State *L) {
    if (luaL_newmetatable(L, GDPropertyProxyMetaTable)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDPropertyProxyMetaTable);
        lua_settable(L, -3);
        
        // Use of `auto` is because the type was somehow messing up the `lua_pushcfunction` macro :/

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            auto propProxy = check_gdpropertyproxy(L, 1);
            if (push_gd_variant(L, propProxy) != 1) {
                return luaL_error(L, "GDPropertyProxy.__index failed to push %s", propProxy.obj.to_string().utf8().c_str());
            }
            // Stack: GDPropertyProxy, index, GD????
            lua_insert(L, 2);
            // Stack: GDPropertyProxy, GD????, index
            lua_gettable(L, 2);
            // Stack: GDPropertyProxy, GD????, value
            if (lua_isfunction(L, 3)) {
                // Stack: GDPropertyProxy, GD????, value
                lua_pushcclosure(L, [](lua_State *L) -> int {
                    // Upvalues: GDPropertyProxy, GD????, value
                    // Stack: ...
                    if (lua_equal(L, 1, lua_upvalueindex(1))) {
                        // Stack: GDPropertyProxy, ...
                        lua_pushvalue(L, lua_upvalueindex(2));
                        // Stack: GDPropertyProxy, ..., GD????
                        lua_replace(L, 1);
                        // Stack: GD????, ...
                    }
                    lua_pushvalue(L, lua_upvalueindex(3));
                    // Stack: ..., original_function
                    lua_insert(L, 1);
                    // Stack: original_function, ...
                    lua_call(L, lua_gettop(L) - 1, LUA_MULTRET);
                    // Stack: ...LUA_MULTRET
                    return lua_gettop(L);
                }, 3);
                // Stack: new_function
            }
            // Stack: ?, value|new_function
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__newindex");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: GDPropertyProxy, index, value
            auto propProxy = check_gdpropertyproxy(L, 1);
            if (push_gd_variant(L, propProxy) != 1) {
                return luaL_error(L, "GDPropertyProxy.__newindex failed to push %s", propProxy.obj.to_string().utf8().c_str());
            }
            // Stack: GDPropertyProxy, index, value, GD????
            lua_insert(L, 2);
            // Stack: GDPropertyProxy, GD????, index, value
            lua_settable(L, 2);
            // Stack: GDPropertyProxy, GD????
            Variant newValue = to_gd_variant(L, 2);
            propProxy = newValue;
            return 0;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            auto propProxy = check_gdpropertyproxy(L, 1);
            if (!propProxy.obj.is_valid()) {
                lua_pushfstring(L, "GDPropertyProxy: INVALID");
            } else {
                String sName = propProxy.obj.to_string();
                Variant value = propProxy;
                String sValue = get_node<Mod>().str_(value);
                lua_pushfstring(L, "GDPropertyProxy: '%s'['%s']: %s", sName.utf8().c_str(), propProxy.property.c_str(), sValue.utf8().c_str());
            }
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__gc");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            auto propProxy = check_gdpropertyproxy(L, 1);
            if (propProxy.obj.is_class("RefCounted")) {
                propProxy.obj("unreference");
            }
            return 0;
        });
        lua_settable(L, -3);
    }
}
