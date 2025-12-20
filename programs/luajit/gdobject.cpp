#include <lua.hpp>

#include "gdobject.hpp"
#include "utils.hpp"
#include "tower.hpp"


Object check_gdobject(lua_State *L, int pos) {
    uint64_t* ud = (uint64_t*)luaL_checkudata(L, pos, GDObjectMetaTable);
    Variant v = get_node<Mod>().instance_from_id_(*ud);
    if (v.get_type() == Variant::Type::NIL || !v.as_object().is_valid()) {
        luaL_error(L, "Attempt to index object that is no longer valid.");  // luaL_error never returns.
        return Nil;
    }
    return v.as_object();
}
Object test_gdobject(lua_State *L, int pos) {
    uint64_t* ud = (uint64_t*)luaL_testudata(L, pos, GDObjectMetaTable);
    if (ud == NULL)
        return Object(0);
    Variant v = get_node<Mod>().instance_from_id_(*ud);
    return v.as_object();
}
int push_gd_object(lua_State *L, Object object) {
    if (object.address() == 0) {
        lua_pushnil(L);
        return 1;
    }

    uint64_t* ud = (uint64_t*)lua_newuserdata(L, sizeof(uint64_t));
    *ud = uint64_t(object("get_instance_id"));  // object.get_instance_id() wrongly returns int

    push_gd_object_metatable(L);
    lua_setmetatable(L, -2);

    return 1;
}

void push_gd_object_metatable(lua_State *L) {
    if (luaL_newmetatable(L, GDObjectMetaTable)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDObjectMetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Object obj = check_gdobject(L, 1);
            // Variant value = to_gd_variant(L, 2);
            if (lua_isstring(L, 2)) {
                std::string name = lua_tostring(L, 2);
                // We can't catch exceptions from the sandbox, so we check if we are allowed first.
                if (!((Mod)get_node()).is_allowed_property(obj, name)) {
                    return luaL_error(L, "Banned property accessed: %s", name.c_str());  // This does not return!
                }
                // TODO: We could temporarily cache GDCallable userdata during this VM call.
                // TODO: GDNameCall instead of GDCallable to handle `obj:method()`, which can bypass GDCallable using obj.call/obj.callv (more performant and Lua idiomatic)
                
                return push_gd_variant(L, obj.get(name));
            }
            lua_pushnil(L);
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__newindex");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: GDObject, index, value
            Object obj = check_gdobject(L, 1);
            // Variant value = to_gd_variant(L, 2);
            if (lua_isstring(L, 2)) {
                std::string name = lua_tostring(L, 2);
                Variant value = to_gd_variant(L, 3);
                obj.set(name, value);
                return 0;
            }
            return luaL_error(L, "GDObject.__newindex only supports string keys but got %s", luaL_typename(L, 2));
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Object obj = test_gdobject(L, 1);
            if (!obj.is_valid()) {
                lua_pushfstring(L, "GDObject: INVALID");
            } else {
                String s = obj.to_string();
                lua_pushfstring(L, "GDObject: '%s'", s.utf8().c_str());
            }
            return 1;
        });
        lua_settable(L, -3);
    }
}
