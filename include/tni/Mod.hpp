#ifndef TNI_API_HEADER_MOD
#define TNI_API_HEADER_MOD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
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

inline void Mod::reload() { voidcall("reload"); }
inline void Mod::call_if_has() { voidcall("call_if_has"); }
inline void Mod::mod_log(String s) { voidcall("mod_log", s); }
inline void Mod::handle_stdout(String s) { voidcall("handle_stdout", s); }
inline Variant Mod::callable_args_to_array(Variant c) { return operator()("callable_args_to_array", c); }
inline bool Mod::array_value_allowed(Variant array, int64_t idx) { return operator()("array_value_allowed", array, idx); }
inline Variant Mod::instance_from_id_(int64_t id) { return operator()("instance_from_id_", id); }
inline String Mod::error_string_(int64_t e) { return operator()("error_string_", e); }

#endif
