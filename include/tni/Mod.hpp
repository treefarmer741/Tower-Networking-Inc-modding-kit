#ifndef TNI_API_HEADER_MOD
#define TNI_API_HEADER_MOD
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Mod : public Sandbox {
	using Sandbox::Sandbox;

	constexpr Mod(Sandbox base) : Sandbox{base} {}
	constexpr Mod(uint64_t addr) : Sandbox{addr} {}
	constexpr Mod(Object obj) : Mod{obj.address()} {}
	Mod(Variant variant) : Mod{variant.as_object().address()} {}


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

inline void Mod::reload() { this->voidcall("reload"); }
inline bool Mod::has_critical_error() { return this->operator()("has_critical_error"); }
inline void Mod::call_if_has() { this->voidcall("call_if_has"); }
inline void Mod::mod_log(String s) { this->voidcall("mod_log", s); }
inline void Mod::handle_stdout(String s) { this->voidcall("handle_stdout", s); }
inline Variant Mod::callable_args_to_array(Variant c) { return this->operator()("callable_args_to_array", c); }
inline bool Mod::array_value_allowed(Variant array, int64_t idx) { return this->operator()("array_value_allowed", array, idx); }
inline Variant Mod::instance_from_id_(int64_t id) { return this->operator()("instance_from_id_", id); }
inline String Mod::error_string_(int64_t e) { return this->operator()("error_string_", e); }
inline String Mod::str_(Variant value) { return this->operator()("str_", value); }

#endif
