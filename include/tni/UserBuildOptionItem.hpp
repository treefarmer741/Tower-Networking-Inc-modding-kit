#ifndef TNI_API_HEADER_USERBUILDOPTIONITEM
#define TNI_API_HEADER_USERBUILDOPTIONITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserBuildOptionItem : public Node {
	using Node::Node;

	constexpr UserBuildOptionItem(Node base) : Node{base} {}
	constexpr UserBuildOptionItem(uint64_t addr) : Node{addr} {}
	constexpr UserBuildOptionItem(Object obj) : UserBuildOptionItem{obj.address()} {}
	UserBuildOptionItem(Variant variant) : UserBuildOptionItem{variant.as_object().address()} {}


	PROPERTY(user_scene_file_path, String);
	PROPERTY(builder_weight, int64_t);
	PROPERTY(spawn_limit, int64_t);
	PROPERTY(will_not_spawn_before_day, int64_t);
	PROPERTY(user_prerequisite_scene_file_paths, Variant);

};



#endif
