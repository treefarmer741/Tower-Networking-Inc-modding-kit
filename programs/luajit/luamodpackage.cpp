#include <api.hpp>
#include <cstring>

#include "luamodpackage.hpp"
#include "tower.hpp"


// Copied from luajit
static const char* pushnexttemplate(lua_State *L, const char *path)
{
    const char *l;
    while (*path == *LUA_PATHSEP) path++;  /* skip separators */
    if (*path == '\0') return NULL;  /* no more templates */
    l = strchr(path, *LUA_PATHSEP);  /* find next separator */
    if (l == NULL) l = path + strlen(path);
    lua_pushlstring(L, path, (size_t)(l - path));  /* template */
    return l;
}

// Based on version from luajit
static bool modreadable(const char *path)
{
    Mod mod = get_node<Mod>();
    ModFileSystem mfs = (ModFileSystem)mod.filesystem();
    std::optional<ModFileAccess> mfa = mfs.open(String(std::string_view(path)), 1);
    if (!mfa.has_value())
        return false;
    mfa.value().close();
    return true;
}

// Copied from luajit
static const char* modsearchpath(lua_State *L, const char *name, const char *path, const char *sep, const char *dirsep) {
    // TODO: If name begins with absolute ("mod://" or "mods://"), then ignore path and only check absolute path.
    luaL_Buffer msg;  /* to build error message */
    luaL_buffinit(L, &msg);
    if (*sep != '\0')  /* non-empty separator? */
    name = luaL_gsub(L, name, sep, dirsep);  /* replace it by 'dirsep' */
    while ((path = pushnexttemplate(L, path)) != NULL) {
        const char *filename = luaL_gsub(L, lua_tostring(L, -1), LUA_PATH_MARK, name);
        lua_remove(L, -2);  /* remove path template */
        if (modreadable(filename))  /* does file exist and is readable? */
            return filename;  /* return that file name */
        lua_pushfstring(L, "\n\tno file " LUA_QS, filename);
        lua_remove(L, -2);  /* remove file name */
        luaL_addvalue(&msg);  /* concatenate error msg. entry */
    }
    luaL_pushresult(&msg);  /* create error message */
    return NULL;  /* not found */
}

// Copied and modified from luajit
static const char *findfile(lua_State *L, const char *name, const char *pname)
{
    const char *path;
    lua_getglobal(L, "package");
    lua_getfield(L, -1, pname);
	lua_remove(L, -2);
    path = lua_tostring(L, -1);
    if (path == NULL)
        luaL_error(L, LUA_QL("package.%s") " must be a string", pname);
    return modsearchpath(L, name, path, ".", LUA_DIRSEP);
}

// Copied and modified from luajit `lj_cf_package_loader_lua`
int lua_modsearcher_lua(lua_State *L) {
	// FIXME: Due to using `findfile`, we make 2 calls into godot to try open the file, once to check readable and the 2nd here.
    const char *filename;
    const char *name = luaL_checkstring(L, 1);
    filename = findfile(L, name, "path");
    if (filename == NULL) return 1;  /* library not found in this path */
    Mod mod = get_node<Mod>();
    ModFileSystem mfs = (ModFileSystem)mod.filesystem();
	ModFileAccess mfa = mfs.open(String(std::string_view(filename)), 1).value();
	String src = mfa.get_as_text(mfa.get_length());
	std::string src_name = std::string() + "@" + name;
    if (luaL_loadbuffer(L, src.utf8().c_str(), src.size(), src_name.c_str()) != 0) {
        luaL_error(L, "error loading module " LUA_QS " from file " LUA_QS ":\n\t%s", name, filename, lua_tostring(L, -1));
    }
    return 1;  /* library loaded successfully */
}

// TODO: Look into loading of c libraries, if it's possible.

// Copied from luajit
int lua_modsearchpath(lua_State *L) {
    const char *f = modsearchpath(L, luaL_checkstring(L, 1),
                                     luaL_checkstring(L, 2),
                                     luaL_optstring(L, 3, "."),
                                     luaL_optstring(L, 4, LUA_DIRSEP));
    if (f != NULL) {
        return 1;
    } else {  /* error message is on top of the stack */
        lua_pushnil(L);
        lua_insert(L, -2);
        return 2;  /* return nil + error message */
    }
}
