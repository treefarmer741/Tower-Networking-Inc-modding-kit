#ifndef TNI_API_HEADER_SCENEDIRADDER
#define TNI_API_HEADER_SCENEDIRADDER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SceneDirAdder : public Node {
	using Node::Node;

	constexpr SceneDirAdder(Node base) : Node{base} {}
	constexpr SceneDirAdder(uint64_t addr) : Node{addr} {}
	constexpr SceneDirAdder(Object obj) : SceneDirAdder{obj.address()} {}
	SceneDirAdder(Variant variant) : SceneDirAdder{variant.as_object().address()} {}


	PROPERTY(scene_dir, String);
	PROPERTY(add_to_group_name, String);

};



#endif
