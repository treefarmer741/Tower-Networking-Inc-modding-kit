#ifndef TNI_API_HEADER_MOD
#define TNI_API_HEADER_MOD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct Mod : public Sandbox {
	using Sandbox::Sandbox;


	Mod(Variant variant) : Mod{variant.as_object().address()} {}

	PROPERTY(mod_entry_binary, String);
	PROPERTY(mod_dir, String);
	PROPERTY(mod_type, String);
	PROPERTY(filesystem, Variant);
	PROPERTY(api_v1, Variant);

	inline void reload() { voidcall("reload"); }
	inline void call_if_has() { voidcall("call_if_has"); }
	inline void mod_log(String s) { voidcall("mod_log", s); }
	inline void handle_stdout(String s) { voidcall("handle_stdout", s); }
	inline Variant instance_from_id_(int64_t id) { return operator()("instance_from_id_", id); }
	inline String error_string_(int64_t e) { return operator()("error_string_", e); }
};

#endif
