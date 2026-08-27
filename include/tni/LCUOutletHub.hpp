#ifndef TNI_API_HEADER_LCUOUTLETHUB
#define TNI_API_HEADER_LCUOUTLETHUB
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct LCUOutletHub : public Node {
	using Node::Node;

	constexpr LCUOutletHub(Node base) : Node{base} {}
	constexpr LCUOutletHub(uint64_t addr) : Node{addr} {}
	constexpr LCUOutletHub(Object obj) : LCUOutletHub{obj.address()} {}
	LCUOutletHub(Variant variant) : LCUOutletHub{variant.as_object().address()} {}

	PROPERTY(LGCTLSCN, Variant);  // Const value type was not supported.
	PROPERTY(VSSCN, Variant);  // Const value type was not supported.

	PROPERTY(outlet_location, Node);
	PROPERTY(switch_controller, LogicController);

	inline void register_outlet(const LCUOutlet& outlet);
	inline void register_outlets_batch(Variant outlets);
};

#include "LogicController.hpp"
#include "LCUOutlet.hpp"

inline void LCUOutletHub::register_outlet(const LCUOutlet& outlet) { this->voidcall("register_outlet", Object(reinterpret_cast<const Object*>(&outlet)->address())); }
inline void LCUOutletHub::register_outlets_batch(Variant outlets) { this->voidcall("register_outlets_batch", outlets); }

#endif
