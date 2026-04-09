#ifndef TNI_API_HEADER_MODLOADER
#define TNI_API_HEADER_MODLOADER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModLoader : public Node {
	using Node::Node;

	constexpr ModLoader(Node base) : Node{base} {}
	constexpr ModLoader(uint64_t addr) : Node{addr} {}
	constexpr ModLoader(Object obj) : ModLoader{obj.address()} {}
	ModLoader(Variant variant) : ModLoader{variant.as_object().address()} {}

	inline static const String PRESET_FILE = "user://mod_preset.json";  // NOTE: You should recompile your mod if this value changes!
	inline static const String MOD_DIR = "user://mods/";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(lua_enabled, bool);
	PROPERTY(lua_elf_path, String);
	PROPERTY(discovered_mods, Variant);
	PROPERTY(preset, ModPreset);
	PROPERTY(loaded_mods, Variant);
	PROPERTY(loaded_mods_ids, Variant);
	PROPERTY(mod_restrictions, Object);
	PROPERTY(has_reloaded, bool);

	inline void rediscover_mods();
	inline Mod try_load_mod(const ModManifest& manifest);
	inline void reload_mods();
	inline void game_host_eod();
	inline void game_state_ready();
	inline void device_spawned(const DeviceUnit& device);
	inline void user_spawned(const LogicControllerUser& user);
	inline void location_spawned(const Location& location);
};

#include "ModPreset.hpp"
#include "ModManifest.hpp"
#include "Mod.hpp"
#include "DeviceUnit.hpp"
#include "LogicControllerUser.hpp"
#include "Location.hpp"

inline void ModLoader::rediscover_mods() { this->voidcall("rediscover_mods"); }
inline Mod ModLoader::try_load_mod(const ModManifest& manifest) { return Mod(this->operator()("try_load_mod", Object(reinterpret_cast<const Object*>(&manifest)->address())).as_object().address()); }
inline void ModLoader::reload_mods() { this->voidcall("reload_mods"); }
inline void ModLoader::game_host_eod() { this->voidcall("game_host_eod"); }
inline void ModLoader::game_state_ready() { this->voidcall("game_state_ready"); }
inline void ModLoader::device_spawned(const DeviceUnit& device) { this->voidcall("device_spawned", Object(reinterpret_cast<const Object*>(&device)->address())); }
inline void ModLoader::user_spawned(const LogicControllerUser& user) { this->voidcall("user_spawned", Object(reinterpret_cast<const Object*>(&user)->address())); }
inline void ModLoader::location_spawned(const Location& location) { this->voidcall("location_spawned", Object(reinterpret_cast<const Object*>(&location)->address())); }

#endif
