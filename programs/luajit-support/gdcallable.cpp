#include <lua.hpp>
#include <stdexcept>

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

        lua_pushstring(L, "create");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            return push_gd_callable(L, to_gd_callable(L, 1));
        });
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

static Variant gd_callable_lua(uint64_t Lptr, Array args) {
    lua_State* L = (lua_State*)Lptr;
    // ENSURE the function remains on the stack!
    // Stack: function, ???
    if (!lua_isfunction(L, 1)) {
        luaL_error(L, "luajit-support error: Expected lua function at top of stack, but found %s", lua_typename(L, lua_type(L, 1)));
    }

    lua_settop(L, 1);  // Ensure nothing was accidentally left on the stack.
    // Stack: function
    lua_pushvalue(L, 1);
    // Stack: function, function

    int nargs = 0;
    for (int i = 0; i < args.size(); i++) {
        nargs += push_gd_variant(L, args[i]);
    }
    // Stack: function, function, args...
    
    if (pcall_stacktrace(L, nargs, LUA_MULTRET) != 0) {
        // Stack: function, err_str
        const char *err = lua_tostring(L, -1);
        printf("Lua exec error: %s\n", err);
        // Stack: function
        throw std::runtime_error("Lua exec error");  // Hopefully propagate the error through godot.
    } else {
        // Stack: function, ...
        int nret = lua_gettop(L) - 1;
        if (nret > 0) {
            // NOTE: This only takes the first return value, as godot only supports single returned values.
            //       We don't try make an array out of all of them, as that might be confusing to the user.
            return to_gd_variant(L, 2);
        }
        return Nil;
    }
}

Callable to_gd_callable(lua_State *L, int pos) {
    if (!lua_isfunction(L, pos)) {
        luaL_error(L, "Expected function but found %s", lua_typename(L, lua_type(L, pos)));  // luaL_error never returns.
        return Nil;
    }

    // FIXME: There is no clean-up, as the lifetime of a Callable is unknown.
    //        We are at least caching so it's not as bad.
    //        But there are cases that cache doesn't work, eg `some_gd_func(function() end)`

    lua_getregistry(L);
    // Stack: ..., LUA_REGISTRY
    lua_pushvalue(L, pos);
    // Stack: ..., LUA_REGISTRY, function
    lua_gettable(L, -2);
    // Stack: ..., LUA_REGISTRY, value
    lua_State* co;
    if (!lua_isthread(L, -1)) {
        // Stack: ..., LUA_REGISTRY, value
        lua_pop(L, 1);
        // Create new lua thread (aka coroutine)
        co = lua_newthread(L);
        // Stack: ..., LUA_REGISTRY, co
        // Put the function in the new thread's stack.
        lua_pushvalue(L, pos);
        // Stack: ..., LUA_REGISTRY, co, function
        lua_xmove(L, co, 1);
        // Stack: ..., LUA_REGISTRY, co

        // Stack: ..., LUA_REGISTRY, co
        lua_pushvalue(L, pos);
        // Stack: ..., LUA_REGISTRY, co, function
        lua_pushvalue(L, -2);
        // Stack: ..., LUA_REGISTRY, co, function, co
        lua_settable(L, -4);
        // Stack: ..., LUA_REGISTRY, co
        lua_pop(L, 2);
        // Stack: ...
    } else {
        // Stack: ..., LUA_REGISTRY, co
        lua_State* co = lua_tothread(L, -1);
        lua_pop(L, 2);
        // Stack: ...
    }

    return get_node<Mod>().callable_args_to_array(Callable::Create(gd_callable_lua, Variant((uint64_t)co)));
}
