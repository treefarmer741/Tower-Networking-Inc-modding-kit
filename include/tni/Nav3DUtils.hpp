#ifndef TNI_API_HEADER_NAV3DUTILS
#define TNI_API_HEADER_NAV3DUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Nav3DUtils : public Node {
	using Node::Node;

	constexpr Nav3DUtils(Node base) : Node{base} {}
	constexpr Nav3DUtils(uint64_t addr) : Node{addr} {}
	constexpr Nav3DUtils(Object obj) : Nav3DUtils{obj.address()} {}
	Nav3DUtils(Variant variant) : Nav3DUtils{variant.as_object().address()} {}



	inline Variant get_stochastic_point(Variant region_rid, Variant target_pos, double accuracy);
};


inline Variant Nav3DUtils::get_stochastic_point(Variant region_rid, Variant target_pos, double accuracy) { return operator()("get_stochastic_point", region_rid, target_pos, accuracy); }

#endif
