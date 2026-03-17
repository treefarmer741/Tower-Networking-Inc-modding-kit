#ifndef TNI_API_HEADER_POWEREDLIGHT
#define TNI_API_HEADER_POWEREDLIGHT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PoweredLight : public Node2D {
	using Node2D::Node2D;

	constexpr PoweredLight(Node2D base) : Node2D{base} {}
	constexpr PoweredLight(uint64_t addr) : Node2D{addr} {}
	constexpr PoweredLight(Object obj) : PoweredLight{obj.address()} {}
	PoweredLight(Variant variant) : PoweredLight{variant.as_object().address()} {}


	PROPERTY(pointlight2d, PointLight2D);
	PROPERTY(physical_state, bool);
	PROPERTY(energy, double);
	PROPERTY(current_load, int64_t);
	PROPERTY(power_controller, PowerController);
	PROPERTY(default_intent, bool);
	PROPERTY(infinite_power_mode, bool);
	PROPERTY(light_color, Variant);
	PROPERTY(power, Power);

};

#include "PowerController.hpp"
#include "Power.hpp"


#endif
