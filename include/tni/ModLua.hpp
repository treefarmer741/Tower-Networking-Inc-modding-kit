#ifndef TNI_API_HEADER_MODLUA
#define TNI_API_HEADER_MODLUA
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Mod.hpp"

struct ModLua : public Mod {
	using Mod::Mod;

	constexpr ModLua(Mod base) : Mod{base} {}
	constexpr ModLua(uint64_t addr) : Mod{addr} {}
	constexpr ModLua(Object obj) : ModLua{obj.address()} {}
	ModLua(Variant variant) : ModLua{variant.as_object().address()} {}


	PROPERTY(lua_entry_file, String);
	PROPERTY(mod_entry_binary, String);
	PROPERTY(mod_dir, String);
	PROPERTY(mod_type, String);
	PROPERTY(manifest, ModManifest);
	PROPERTY(filesystem, ModFileSystem);
	PROPERTY(api_v1, ModApiV1);

	inline void reload();
	inline bool has_critical_error();
	inline void call_if_has();
	inline void mod_log(String s);
	inline void handle_stdout(String s);
	inline Variant callable_args_to_array(Variant c);
	inline bool array_value_allowed(Variant array, int64_t idx);
	inline Variant instance_from_id_(int64_t id);
	inline String error_string_(int64_t e);
	inline String str_(Variant value);
};

#include "ModManifest.hpp"
#include "ModFileSystem.hpp"
#include "ModApiV1.hpp"

inline void ModLua::reload() { this->voidcall("reload"); }
inline bool ModLua::has_critical_error() { return this->operator()("has_critical_error"); }
inline void ModLua::call_if_has() { this->voidcall("call_if_has"); }
inline void ModLua::mod_log(String s) { this->voidcall("mod_log", s); }
inline void ModLua::handle_stdout(String s) { this->voidcall("handle_stdout", s); }
inline Variant ModLua::callable_args_to_array(Variant c) { return this->operator()("callable_args_to_array", c); }
inline bool ModLua::array_value_allowed(Variant array, int64_t idx) { return this->operator()("array_value_allowed", array, idx); }
inline Variant ModLua::instance_from_id_(int64_t id) { return this->operator()("instance_from_id_", id); }
inline String ModLua::error_string_(int64_t e) { return this->operator()("error_string_", e); }
inline String ModLua::str_(Variant value) { return this->operator()("str_", value); }

#endif
