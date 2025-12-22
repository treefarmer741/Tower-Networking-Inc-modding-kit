#ifndef TNI_API_HEADER_POWEROUTAGEMOD
#define TNI_API_HEADER_POWEROUTAGEMOD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PowerOutageMod : public Node {
	using Node::Node;

	constexpr PowerOutageMod(Node base) : Node{base} {}
	constexpr PowerOutageMod(uint64_t addr) : Node{addr} {}
	constexpr PowerOutageMod(Object obj) : PowerOutageMod{obj.address()} {}
	PowerOutageMod(Variant variant) : PowerOutageMod{variant.as_object().address()} {}


	PROPERTY(start_ts, int64_t);
	PROPERTY(end_ts, int64_t);
	PROPERTY(rootpc, PowerController);

};

#include "PowerController.hpp"


#endif
