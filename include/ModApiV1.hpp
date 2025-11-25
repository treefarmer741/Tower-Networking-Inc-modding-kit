#ifndef TN_API_HEADER_MODAPIV1
#define TN_API_HEADER_MODAPIV1

#include <api.hpp>

struct ModApiV1 : public Node {
	using Node::Node;

	METHOD(void, sanity);
	METHOD(Variant, get_game_world);
	METHOD(Variant, get_player_camera);
	METHOD(Variant, get_base_ui);
	METHOD(Variant, get_devices);
	METHOD(Variant, get_users);
};

#endif