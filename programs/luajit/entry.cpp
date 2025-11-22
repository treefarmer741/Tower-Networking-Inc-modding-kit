#include <api.hpp>
#include <cstring>
extern "C" {
#include <lauxlib.h>
#include <lua.h>
#include <lualib.h>
}

static lua_State *L;
static constexpr bool VERBOSE = false;

static int api_print(lua_State *L) {
	const char *text = luaL_checkstring(L, 1);
    const char *opt_text = luaL_optstring(L, 2, "\n");
	printf("%s%s", text, opt_text);
	fflush(stdout);
	return 0;
}

static Variant set_lua_source(String code, String path) {
    // TODO: do something with path?
    const std::string utf = code.utf8();
    if (luaL_loadbuffer(L, utf.c_str(), utf.size(), "@code") != 0) {
        const char *err = lua_tostring(L, -1);
        printf("Lua load error: %s\n", err);
        lua_pop(L, 1);
        return Nil;
    }
    
    if (lua_pcall(L, 0, 0, 0) != 0) {
        const char *err = lua_tostring(L, -1);
        printf("Lua exec error: %s\n", err);
        lua_pop(L, 1);
        return Nil;
    }
    
    return Nil;
}

static std::vector<Variant> temp_objects;
static void clear_temp_objects() {
    temp_objects.clear();
}

static void push_object_to_lua(Variant* obj_ptr, bool is_temp = false) {
    if (is_temp) {
        // store in stack
        temp_objects.push_back(*obj_ptr);
        obj_ptr = &temp_objects.back();
    }
    
    Variant** ud = (Variant**)lua_newuserdata(L, sizeof(Variant*));
    *ud = obj_ptr;
    
    if (luaL_newmetatable(L, "GodotObjectTemp")) {
        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Variant** ud = (Variant**)luaL_checkudata(L, 1, "GodotObjectTemp");
            Variant* obj_ptr = *ud;
            const char *key = luaL_checkstring(L, 2);
            
            lua_pushlightuserdata(L, obj_ptr);
            lua_pushstring(L, key);
            lua_pushcclosure(L, [](lua_State *L) -> int {
                Variant* obj_ptr = (Variant*)lua_touserdata(L, lua_upvalueindex(1));
                const char *method = lua_tostring(L, lua_upvalueindex(2));
                
                std::array<Variant, 8> args;
                size_t n = 0;
                for (int i = 1; i <= lua_gettop(L) && n < 8; i++) {
                    switch (lua_type(L, i)) {
                        case LUA_TBOOLEAN: args[n++] = bool(lua_toboolean(L, i)); break;
                        case LUA_TNUMBER: args[n++] = double(lua_tonumber(L, i)); break;
                        case LUA_TSTRING: args[n++] = lua_tostring(L, i); break;
                    }
                }
                
                Variant res = n == 0 ? (*obj_ptr)(method) :
                             n == 1 ? (*obj_ptr)(method, args[0]) :
                             n == 2 ? (*obj_ptr)(method, args[0], args[1]) :
                             n == 3 ? (*obj_ptr)(method, args[0], args[1], args[2]) :
                                     (*obj_ptr)(method, args[0], args[1], args[2], args[3]);
                
                switch (res.get_type()) {
                    case Variant::Type::BOOL: lua_pushboolean(L, res); return 1;
                    case Variant::Type::INT:
                    case Variant::Type::FLOAT: lua_pushnumber(L, res); return 1;
                    case Variant::Type::STRING:
                        lua_pushstring(L, res.as_std_string().c_str()); return 1;
					case Variant::Type::OBJECT:
    					push_object_to_lua(&res, true);  // mark as temporary stack
    					return 1;
                    default: return 0;
                }
            }, 2);
            return 1;
        });
        lua_settable(L, -3);
    }
    lua_setmetatable(L, -2);
}

#define DEFINE_LUA_CALLBACK_0(name) \
    static Variant name(Object modding_api) { \
        lua_getglobal(L, #name); \
        if (!lua_isfunction(L, -1)) { \
            lua_pop(L, 1); \
            return Nil; \
        } \
        Variant v_api = modding_api; \
		clear_temp_objects(); \
        push_object_to_lua(&v_api); \
        if (lua_pcall(L, 1, 0, 0) != 0) { \
            const char *err = lua_tostring(L, -1); \
            printf("Lua error: %s\n", err); \
            lua_pop(L, 1); \
        } \
        return Nil; \
    }

#define DEFINE_LUA_CALLBACK_1(name, type1, param1) \
    static Variant name(Object modding_api, type1 param1) { \
        lua_getglobal(L, #name); \
        if (!lua_isfunction(L, -1)) { \
            lua_pop(L, 1); \
            return Nil; \
        } \
		clear_temp_objects(); \
        Variant v_api = modding_api; \
        Variant v_param = param1; \
        push_object_to_lua(&v_api); \
        push_object_to_lua(&v_param); \
        if (lua_pcall(L, 2, 0, 0) != 0) { \
            const char *err = lua_tostring(L, -1); \
            printf("Lua error: %s\n", err); \
            lua_pop(L, 1); \
        } \
        return Nil; \
    }

DEFINE_LUA_CALLBACK_0(on_engine_load)
DEFINE_LUA_CALLBACK_0(on_mod_reload)
DEFINE_LUA_CALLBACK_0(on_game_state_ready)
DEFINE_LUA_CALLBACK_0(on_game_host_eod)

DEFINE_LUA_CALLBACK_1(on_game_tick, double, delta)
DEFINE_LUA_CALLBACK_1(on_player_input, InputEvent, event)
DEFINE_LUA_CALLBACK_1(on_device_spawned, Node, device)
DEFINE_LUA_CALLBACK_1(on_user_spawned, Node, user)
DEFINE_LUA_CALLBACK_1(on_location_spawned, Node, location)

int main() {
    L = luaL_newstate();
    luaL_openlibs(L);
    
    lua_register(L, "print", api_print);
    
    ADD_API_FUNCTION(set_lua_source, "", "");
    ADD_API_FUNCTION(on_engine_load, "", "", "");
    ADD_API_FUNCTION(on_game_state_ready, "", "", "");
    ADD_API_FUNCTION(on_game_host_eod, "", "", "");
    ADD_API_FUNCTION(on_game_tick, "", "", "");
    ADD_API_FUNCTION(on_player_input, "", "", "");
    ADD_API_FUNCTION(on_device_spawned, "", "", "");
    ADD_API_FUNCTION(on_user_spawned, "", "", "");
    ADD_API_FUNCTION(on_location_spawned, "", "", "");

    ADD_API_FUNCTION(on_mod_reload, "", "", "");
    
    halt();
}