#ifndef TNI_API_HEADER_TOGGLEFAN
#define TNI_API_HEADER_TOGGLEFAN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ToggleFan : public Node2D {
	using Node2D::Node2D;

	constexpr ToggleFan(Node2D base) : Node2D{base} {}
	constexpr ToggleFan(uint64_t addr) : Node2D{addr} {}
	constexpr ToggleFan(Object obj) : ToggleFan{obj.address()} {}
	ToggleFan(Variant variant) : ToggleFan{variant.as_object().address()} {}


	PROPERTY(physical_state, bool);
	PROPERTY(current_load, int64_t);
	PROPERTY(power_controller, PowerController);
	PROPERTY(default_intent, bool);
	PROPERTY(infinite_power_mode, bool);
	PROPERTY(power, Power);

};

#include "PowerController.hpp"
#include "Power.hpp"


#endif
