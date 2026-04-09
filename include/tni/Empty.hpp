#ifndef TNI_API_HEADER_EMPTY
#define TNI_API_HEADER_EMPTY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Empty : public Node {
	using Node::Node;

	constexpr Empty(Node base) : Node{base} {}
	constexpr Empty(uint64_t addr) : Node{addr} {}
	constexpr Empty(Object obj) : Empty{obj.address()} {}
	Empty(Variant variant) : Empty{variant.as_object().address()} {}



};



#endif
