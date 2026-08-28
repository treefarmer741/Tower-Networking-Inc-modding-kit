#include <lua.hpp>
#include <cstring>
#include <unordered_set>

#include "gddictionary.hpp"
#include "utils.hpp"
#include "tower.hpp"


// Must be a static list as there is no way to check what methods exist at runtime in Godot for special types like Dictionary.
// This was generated from https://github.com/godotengine/godot/tree/master/doc/classes using "tools/extract_valid_names_from_docs.py"
static std::unordered_set<std::string_view> _dictionary_method_names = {"assign", "clear", "duplicate", "duplicate_deep", "erase", "find_key", "get", "get_or_add", "get_typed_key_builtin", "get_typed_key_class_name", "get_typed_key_script", "get_typed_value_builtin", "get_typed_value_class_name", "get_typed_value_script", "has", "has_all", "hash", "is_empty", "is_read_only", "is_same_typed", "is_same_typed_key", "is_same_typed_value", "is_typed", "is_typed_key", "is_typed_value", "keys", "make_read_only", "merge", "merged", "recursive_equal", "set", "size", "sort", "values"};


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
                if (_dictionary_method_names.contains(skey)) {
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
