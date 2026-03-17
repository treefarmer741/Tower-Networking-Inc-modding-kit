#ifndef TNI_API_HEADER_POWERSURGEMOD
#define TNI_API_HEADER_POWERSURGEMOD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PowerSurgeMod : public Node {
	using Node::Node;

	constexpr PowerSurgeMod(Node base) : Node{base} {}
	constexpr PowerSurgeMod(uint64_t addr) : Node{addr} {}
	constexpr PowerSurgeMod(Object obj) : PowerSurgeMod{obj.address()} {}
	PowerSurgeMod(Variant variant) : PowerSurgeMod{variant.as_object().address()} {}


	PROPERTY(start_ts, int64_t);
	PROPERTY(end_ts, int64_t);
	PROPERTY(rootpc, PowerController);
	PROPERTY(powmet, PowerMeter);

};

#include "PowerController.hpp"
#include "PowerMeter.hpp"


#endif
