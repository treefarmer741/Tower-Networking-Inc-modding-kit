#ifndef TNI_API_HEADER_MULTIPLAYERUTILS
#define TNI_API_HEADER_MULTIPLAYERUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MultiplayerUtils : public Object {
	using Object::Object;

	constexpr MultiplayerUtils(Object base) : Object{base} {}
	constexpr MultiplayerUtils(uint64_t addr) : Object{addr} {}
	MultiplayerUtils(Variant variant) : MultiplayerUtils{variant.as_object().address()} {}

	inline static const String SYNCHRONIZER_PROHIBITION_METATAG = "pocosia_multiplayer_synchronizer_prohibited";  // NOTE: You should recompile your mod if this value changes!


	inline int64_t add_scenes_in_path_as_spawnable(MultiplayerSpawner mpspawn, String path, bool recursion, bool ensure_added);
	inline void update_replication_config(MultiplayerSynchronizer mpsync, Variant repl_config_map);
	inline Variant create_replication_config(Variant repl_config_map);
	inline void prohibit_and_remove_synchronizers(Node parent, bool recurse_into_descendants);
	inline MultiplayerSynchronizer add_synchronizer_with_config(Node parent, Variant repl_config_map, Variant sync_interval, Variant watch_interval, String name);
	inline void debug_synchronizer(MultiplayerSynchronizer mpsync);
};


inline int64_t MultiplayerUtils::add_scenes_in_path_as_spawnable(MultiplayerSpawner mpspawn, String path, bool recursion, bool ensure_added) { return operator()("add_scenes_in_path_as_spawnable", mpspawn, path, recursion, ensure_added); }
inline void MultiplayerUtils::update_replication_config(MultiplayerSynchronizer mpsync, Variant repl_config_map) { voidcall("update_replication_config", mpsync, repl_config_map); }
inline Variant MultiplayerUtils::create_replication_config(Variant repl_config_map) { return operator()("create_replication_config", repl_config_map); }
inline void MultiplayerUtils::prohibit_and_remove_synchronizers(Node parent, bool recurse_into_descendants) { voidcall("prohibit_and_remove_synchronizers", parent, recurse_into_descendants); }
inline MultiplayerSynchronizer MultiplayerUtils::add_synchronizer_with_config(Node parent, Variant repl_config_map, Variant sync_interval, Variant watch_interval, String name) { return MultiplayerSynchronizer(operator()("add_synchronizer_with_config", parent, repl_config_map, sync_interval, watch_interval, name).as_object().address()); }
inline void MultiplayerUtils::debug_synchronizer(MultiplayerSynchronizer mpsync) { voidcall("debug_synchronizer", mpsync); }

#endif
