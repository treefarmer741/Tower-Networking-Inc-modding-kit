#pragma once

#include <lua.hpp>
#include <api.hpp>


static const char* GDPropertyProxyMetaTable = "GDPropertyProxy";

template <typename P = Variant>
struct LuaPropertyProxy {
	Object obj;
	std::string property;

	constexpr LuaPropertyProxy(const Object obj, std::string property)
			: obj(Object(obj)), property(property) {}

	LuaPropertyProxy &operator=(const P &v) {
		obj.set(property, v);
		return *this;
	}

	bool operator== (const P &v) const { return P(obj.get(property)) == v; }
	bool operator!=(const P &v) const { return P(obj.get(property)) != v; }

	operator P() {
		return obj.get(property);
	}
};

LuaPropertyProxy<> check_gdpropertyproxy(lua_State *L, int pos);
LuaPropertyProxy<> test_gdpropertyproxy(lua_State *L, int pos);
int push_gd_propertyproxy(lua_State *L, Object obj, std::string name);
void push_gd_propertyproxy_metatable(lua_State *L);
