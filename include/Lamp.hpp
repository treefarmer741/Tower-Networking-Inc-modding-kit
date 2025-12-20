#ifndef TNI_API_HEADER_LAMP
#define TNI_API_HEADER_LAMP
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Lamp : public Node2D {
	using Node2D::Node2D;

	constexpr Lamp(Node2D base) : Node2D{base} {}
	constexpr Lamp(uint64_t addr) : Node2D{addr} {}
	constexpr Lamp(Object obj) : Lamp{obj.address()} {}
	Lamp(Variant variant) : Lamp{variant.as_object().address()} {}


	PROPERTY(pointlight2d, PointLight2D);
	PROPERTY(physical_state, bool);
	PROPERTY(current_load, int64_t);
	PROPERTY(power_controller, PowerController);
	PROPERTY(infinite_power_mode, bool);
	PROPERTY(light_color, Variant);
	PROPERTY(power, Power);

};

#include "PowerController.hpp"
#include "Power.hpp"


#endif
