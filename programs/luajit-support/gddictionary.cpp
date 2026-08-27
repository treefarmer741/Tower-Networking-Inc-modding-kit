#include <lua.hpp>
#include <cstring>

#include "gddictionary.hpp"
#include "utils.hpp"
#include "tower.hpp"


Dictionary* check_gddictionary(lua_State *L, int pos) {
    return (Dictionary*)luaL_checkudata(L, pos, GDDictionaryMetaTable);
}
Dictionary* test_gddictionary(lua_State *L, int pos) {
    return (Dictionary*)luaL_testudata(L, pos, GDDictionaryMetaTable);
}
int push_gd_dictionary(lua_State *L, Dictionary dictionary) {
    // `Dictionary` just holds an index to the real dictionary.
    Dictionary* ud = (Dictionary*)lua_newuserdata(L, sizeof(Dictionary));
    // `Dictionary` has assign operator, so we use memcpy to get around it.
    memcpy((void*)ud, &dictionary, sizeof(Dictionary));

    push_gd_dictionary_metatable(L);
    lua_setmetatable(L, -2);

    return 1;
}

void push_gd_dictionary_metatable(lua_State *L) {
    if (luaL_newmetatable(L, GDDictionaryMetaTable)) {
        lua_pushstring(L, "create");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            return push_gd_variant(L, Dictionary::Create());
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__name");  // Was added in Lua 5.3, and not in LuaJIT, but it's nice to have anyway.
        lua_pushstring(L, GDDictionaryMetaTable);
        lua_settable(L, -3);

        lua_pushstring(L, "__index");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gdarray, index
            Dictionary* dictionary = check_gddictionary(L, 1);
            if (lua_isstring(L, 2)) {
                const char* skey = lua_tostring(L, 2);
                if (((Mod)get_node()).class_has_method("Dictionary", std::string(skey))) {
                    lua_pushcclosure(L, variant_self_call, 1);
                    return 1;
                }
            }
            Variant key = to_gd_variant(L, 2);
            return push_gd_variant(L, dictionary->get(key));
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__newindex");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gdarray, index, value
            Dictionary* dictionary = check_gddictionary(L, 1);
            Variant key = to_gd_variant(L, 2);
            Variant value = to_gd_variant(L, 3);
            dictionary->set(key, value);
            return 0;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__len");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            // Stack: gddictionary
            Dictionary* dictionary = check_gddictionary(L, 1);
            lua_pushinteger(L, dictionary->size());
            return 1;
        });
        lua_settable(L, -3);

        lua_pushstring(L, "__tostring");
        lua_pushcfunction(L, [](lua_State *L) -> int {
            Dictionary* dictionary = test_gddictionary(L, 1);
            if (dictionary == NULL) {
                lua_pushfstring(L, "GDDictionary: INVALID");
            } else {
                lua_pushfstring(L, "GDDictionary: %d@%p-%s", dictionary->get_variant_index(), dictionary, dictionary->is_permanent() ? "perm" : "temp");
            }
            return 1;
        });
        lua_settable(L, -3);
    }
}
