#ifndef TNI_API_HEADER_GAMEWORLDUTILS
#define TNI_API_HEADER_GAMEWORLDUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameWorldUtils : public Object {
	using Object::Object;

	constexpr GameWorldUtils(Object base) : Object{base} {}
	constexpr GameWorldUtils(uint64_t addr) : Object{addr} {}
	GameWorldUtils(Variant variant) : GameWorldUtils{variant.as_object().address()} {}

	inline static const String GW_RESERVED_GROUP_NAME = "__pgc_game_world";  // NOTE: You should recompile your mod if this value changes!
	inline static const String GU_RESERVED_GROUP_NAME = "__pgc_game_unique_";  // NOTE: You should recompile your mod if this value changes!


	inline void designate_as(Node subject, String reserved_group_name);
	inline Node get_gn(Node subject, String reserved_group_name);
	inline void designate_as_world(Node subject);
	inline void designate_as_unique(Node subject, String key);
	inline Node get_world_of(Node subject);
	inline Node get_unique_in_world_of(Node subject, String key);
};


inline void GameWorldUtils::designate_as(Node subject, String reserved_group_name) { voidcall("designate_as", subject, reserved_group_name); }
inline Node GameWorldUtils::get_gn(Node subject, String reserved_group_name) { return Node(operator()("get_gn", subject, reserved_group_name).as_object().address()); }
inline void GameWorldUtils::designate_as_world(Node subject) { voidcall("designate_as_world", subject); }
inline void GameWorldUtils::designate_as_unique(Node subject, String key) { voidcall("designate_as_unique", subject, key); }
inline Node GameWorldUtils::get_world_of(Node subject) { return Node(operator()("get_world_of", subject).as_object().address()); }
inline Node GameWorldUtils::get_unique_in_world_of(Node subject, String key) { return Node(operator()("get_unique_in_world_of", subject, key).as_object().address()); }

#endif
