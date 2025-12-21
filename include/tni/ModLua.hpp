#ifndef TNI_API_HEADER_MODLUA
#define TNI_API_HEADER_MODLUA
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ModLua : public Sandbox {
	using Sandbox::Sandbox;

	constexpr ModLua(Sandbox base) : Sandbox{base} {}
	constexpr ModLua(uint64_t addr) : Sandbox{addr} {}
	constexpr ModLua(Object obj) : ModLua{obj.address()} {}
	ModLua(Variant variant) : ModLua{variant.as_object().address()} {}


	PROPERTY(lua_entry_file, String);
	PROPERTY(mod_entry_binary, String);
	PROPERTY(mod_dir, String);
	PROPERTY(mod_type, String);
	PROPERTY(filesystem, ModFileSystem);
	PROPERTY(api_v1, ModApiV1);

	inline void reload();
	inline void call_if_has();
	inline void mod_log(String s);
	inline void handle_stdout(String s);
	inline Variant callable_args_to_array(Variant c);
	inline bool array_value_allowed(Variant array, int64_t idx);
	inline Variant instance_from_id_(int64_t id);
	inline String error_string_(int64_t e);
};

#include "ModFileSystem.hpp"
#include "ModApiV1.hpp"

inline void ModLua::reload() { voidcall("reload"); }
inline void ModLua::call_if_has() { voidcall("call_if_has"); }
inline void ModLua::mod_log(String s) { voidcall("mod_log", s); }
inline void ModLua::handle_stdout(String s) { voidcall("handle_stdout", s); }
inline Variant ModLua::callable_args_to_array(Variant c) { return operator()("callable_args_to_array", c); }
inline bool ModLua::array_value_allowed(Variant array, int64_t idx) { return operator()("array_value_allowed", array, idx); }
inline Variant ModLua::instance_from_id_(int64_t id) { return operator()("instance_from_id_", id); }
inline String ModLua::error_string_(int64_t e) { return operator()("error_string_", e); }

#endif
