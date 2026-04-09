#ifndef TNI_API_HEADER_FLOORBUILDOPTIONITEM
#define TNI_API_HEADER_FLOORBUILDOPTIONITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct FloorBuildOptionItem : public Node {
	using Node::Node;

	constexpr FloorBuildOptionItem(Node base) : Node{base} {}
	constexpr FloorBuildOptionItem(uint64_t addr) : Node{addr} {}
	constexpr FloorBuildOptionItem(Object obj) : FloorBuildOptionItem{obj.address()} {}
	FloorBuildOptionItem(Variant variant) : FloorBuildOptionItem{variant.as_object().address()} {}


	PROPERTY(location_scene_file_path, String);
	PROPERTY(builder_weight, int64_t);
	PROPERTY(spawn_limit, int64_t);
	PROPERTY(will_not_spawn_before_day, int64_t);
	PROPERTY(location_prerequisite_scene_file_path, String);

};



#endif
