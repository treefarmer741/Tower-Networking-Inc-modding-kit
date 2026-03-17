#ifndef TNI_API_HEADER_MODLOADER
#define TNI_API_HEADER_MODLOADER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ModLoader : public Node {
	using Node::Node;

	constexpr ModLoader(Node base) : Node{base} {}
	constexpr ModLoader(uint64_t addr) : Node{addr} {}
	constexpr ModLoader(Object obj) : ModLoader{obj.address()} {}
	ModLoader(Variant variant) : ModLoader{variant.as_object().address()} {}

	inline static const String MOD_DIR = "user://mods/";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(loaded_mods, Variant);
	PROPERTY(lua_enabled, bool);
	PROPERTY(lua_elf_path, String);

	inline void try_load_mod(String mod_name);
	inline void reload_mods();
	inline void game_host_eod();
	inline void game_state_ready();
	inline void device_spawned(Variant device);
	inline void user_spawned(Variant user);
	inline void location_spawned(Variant loc);
};


inline void ModLoader::try_load_mod(String mod_name) { voidcall("try_load_mod", mod_name); }
inline void ModLoader::reload_mods() { voidcall("reload_mods"); }
inline void ModLoader::game_host_eod() { voidcall("game_host_eod"); }
inline void ModLoader::game_state_ready() { voidcall("game_state_ready"); }
inline void ModLoader::device_spawned(Variant device) { voidcall("device_spawned", device); }
inline void ModLoader::user_spawned(Variant user) { voidcall("user_spawned", user); }
inline void ModLoader::location_spawned(Variant loc) { voidcall("location_spawned", loc); }

#endif
