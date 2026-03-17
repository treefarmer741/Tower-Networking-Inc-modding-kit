#ifndef TNI_API_HEADER_FLOORBUILDEVENTNODE
#define TNI_API_HEADER_FLOORBUILDEVENTNODE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FloorBuildEventNode : public Node {
	using Node::Node;

	constexpr FloorBuildEventNode(Node base) : Node{base} {}
	constexpr FloorBuildEventNode(uint64_t addr) : Node{addr} {}
	constexpr FloorBuildEventNode(Object obj) : FloorBuildEventNode{obj.address()} {}
	FloorBuildEventNode(Variant variant) : FloorBuildEventNode{variant.as_object().address()} {}


	PROPERTY(location, Location);
	PROPERTY(day, int64_t);
	PROPERTY(skip_random_builds, bool);
	PROPERTY(check_requirements, bool);

};

#include "Location.hpp"


#endif
