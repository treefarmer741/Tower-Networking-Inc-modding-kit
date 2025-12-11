extern "C" {
#include <lua.h>
}

#define DEBUG(...) printf(__VA_ARGS__); fflush(stdout)

static const char* GDObjectMetaTable = "GodotObject";
static const char* GDCallableMetaTable = "GodotCallable";


template<typename T>
T lua_touserdata_t(lua_State *L, int pos, const char* metatable_name);

inline Object check_gdobject(lua_State *L, int pos);
inline Object test_gdobject(lua_State *L, int pos);
int push_gd_object(lua_State *L, Object object);

inline Callable* check_gdcallable(lua_State *L, int pos);
inline Callable* test_gdcallable(lua_State *L, int pos);
int push_gd_callable(lua_State *L, Callable callable);

int push_gd_variant(lua_State *L, Variant variant);

Variant to_gd_variant(lua_State *L, int pos);

int debug_stacktrace_handler(lua_State *L);
int pcall_stacktrace(lua_State* L, int nargs, int nret);

void print_lua_stack(lua_State *L);
