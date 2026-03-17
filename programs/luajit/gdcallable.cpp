#include <lua.hpp>

#include "gdcallable.hpp"
#include "utils.hpp"
#include "tower.hpp"


Callable* check_gdcallable(lua_State *L, int pos) {
    return (Callable*)luaL_checkudata(L, pos, GDCallableMetaTable);
}
Callable* test_gdcallable(lua_State *L, int pos) {
    return (Callable*)luaL_testudata(L, pos, GDCallableMetaTable);
}
int push_gd_callable(lua_State *L, Callable callable) {
    // `Callable` just holds an index to the real callable.
    Callable* ud = (Callable*)lua_newuserdata(L, sizeof(Callable));
    *ud = callable;

    push_gd_callable_metatable(L);
    lua_setmetatable(L, -2);

    return 1;
}

void push_gd_callable_metatable(lua_State *L) {
    if (luaL_newmetatable(L, GDCallableMetaTable)) {
        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDCallableMetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__call");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: GDCallable, args...
            Callable* ud = check_gdcallable(L, 1);
            Variant v = Variant(*ud);
            const int args_pos = 2;  // Position on stack where arguments start.
            int nargs = lua_gettop(L) - (args_pos-1);
            Variant result;
            switch (nargs) {
                case 0: result = ud->call(); break;
                case 1: result = ud->call(to_gd_variant(L, args_pos)); break;
                case 2: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1)); break;
                case 3: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2)); break;
                case 4: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3)); break;
                case 5: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4)); break;
                case 6: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4), to_gd_variant(L, args_pos+5)); break;
                case 7: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4), to_gd_variant(L, args_pos+5), to_gd_variant(L, args_pos+6)); break;
                case 8: result = ud->call(to_gd_variant(L, args_pos), to_gd_variant(L, args_pos+1), to_gd_variant(L, args_pos+2), to_gd_variant(L, args_pos+3), to_gd_variant(L, args_pos+4), to_gd_variant(L, args_pos+5), to_gd_variant(L, args_pos+6), to_gd_variant(L, args_pos+7)); break;
                // godot-sandbox only supports up to 8 args.
                // https://github.com/libriscv/godot-sandbox/blob/1553c9f988f9e174e843143a932f5ba488c9ccdc/src/sandbox_syscalls.cpp#L105
                // We could get around this by creating a godot array and using `ud->call("callv", args)`
                default:
                    return luaL_error(L, "GDCallable.__call Too many arguments");  // luaL_error never returns.
            }
            return push_gd_variant(L, result);
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Callable* ud = test_gdcallable(L, 1);
            if (ud == NULL) {
                lua_pushfstring(L, "GDCallable: INVALID");
            } else {
                lua_pushfstring(L, "GDCallable: %d@%p", ud->get_variant_index(), ud);  // TODO: Can we get the name and/or signature?
            }
            return 1;
        });
        lua_settable(L, -3);
    }
}
