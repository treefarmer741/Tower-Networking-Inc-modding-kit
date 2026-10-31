#ifndef TNI_API_HEADER_CABLEPROBETICKER
#define TNI_API_HEADER_CABLEPROBETICKER
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableProbeTicker : public Node {
	using Node::Node;

	constexpr CableProbeTicker(Node base) : Node{base} {}
	constexpr CableProbeTicker(uint64_t addr) : Node{addr} {}
	constexpr CableProbeTicker(Object obj) : CableProbeTicker{obj.address()} {}
	CableProbeTicker(Variant variant) : CableProbeTicker{variant.as_object().address()} {}


	PROPERTY(fn, Variant);
	PROPERTY(t0, int64_t);

};



#endif
