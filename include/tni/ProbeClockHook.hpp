#ifndef TNI_API_HEADER_PROBECLOCKHOOK
#define TNI_API_HEADER_PROBECLOCKHOOK
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ProbeClockHook : public Node {
	using Node::Node;

	constexpr ProbeClockHook(Node base) : Node{base} {}
	constexpr ProbeClockHook(uint64_t addr) : Node{addr} {}
	constexpr ProbeClockHook(Object obj) : ProbeClockHook{obj.address()} {}
	ProbeClockHook(Variant variant) : ProbeClockHook{variant.as_object().address()} {}


	PROPERTY(on_process, Variant);
	PROPERTY(on_physics, Variant);

};



#endif
