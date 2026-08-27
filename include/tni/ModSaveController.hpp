#ifndef TNI_API_HEADER_MODSAVECONTROLLER
#define TNI_API_HEADER_MODSAVECONTROLLER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModSaveController : public Node {
	using Node::Node;

	constexpr ModSaveController(Node base) : Node{base} {}
	constexpr ModSaveController(uint64_t addr) : Node{addr} {}
	constexpr ModSaveController(Object obj) : ModSaveController{obj.address()} {}
	ModSaveController(Variant variant) : ModSaveController{variant.as_object().address()} {}



};



#endif
