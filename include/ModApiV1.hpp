#ifndef TN_API_HEADER_MODAPIV1
#define TN_API_HEADER_MODAPIV1

#include <api.hpp>

struct ModApiV1 : public Node {
	using Node::Node;

	ModApiV1(Variant variant) : ModApiV1{variant.as_object().address()} {}


	inline void sanity() { voidcall("sanity"); }
	inline Variant get_game_world() { return operator()("get_game_world"); }
	inline Variant get_player_camera() { return operator()("get_player_camera"); }
	inline Variant get_base_ui() { return operator()("get_base_ui"); }
	inline Variant get_devices() { return operator()("get_devices"); }
	inline Variant get_users() { return operator()("get_users"); }
};

#endif
