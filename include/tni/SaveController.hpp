#ifndef TNI_API_HEADER_SAVECONTROLLER
#define TNI_API_HEADER_SAVECONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SaveController : public Node {
	using Node::Node;

	constexpr SaveController(Node base) : Node{base} {}
	constexpr SaveController(uint64_t addr) : Node{addr} {}
	constexpr SaveController(Object obj) : SaveController{obj.address()} {}
	SaveController(Variant variant) : SaveController{variant.as_object().address()} {}



};



#endif
