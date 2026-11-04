#ifndef TNI_API_HEADER_S14INPUTDELAYHOOK
#define TNI_API_HEADER_S14INPUTDELAYHOOK
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S14InputDelayHook : public Node {
	using Node::Node;

	constexpr S14InputDelayHook(Node base) : Node{base} {}
	constexpr S14InputDelayHook(uint64_t addr) : Node{addr} {}
	constexpr S14InputDelayHook(Object obj) : S14InputDelayHook{obj.address()} {}
	S14InputDelayHook(Variant variant) : S14InputDelayHook{variant.as_object().address()} {}


	PROPERTY(on_process, Variant);
	PROPERTY(on_physics, Variant);

};



#endif
