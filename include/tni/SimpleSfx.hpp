#ifndef TNI_API_HEADER_SIMPLESFX
#define TNI_API_HEADER_SIMPLESFX
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimpleSfx : public Node2D {
	using Node2D::Node2D;

	constexpr SimpleSfx(Node2D base) : Node2D{base} {}
	constexpr SimpleSfx(uint64_t addr) : Node2D{addr} {}
	constexpr SimpleSfx(Object obj) : SimpleSfx{obj.address()} {}
	SimpleSfx(Variant variant) : SimpleSfx{variant.as_object().address()} {}


	PROPERTY(power_controller, PowerController);

};

#include "PowerController.hpp"


#endif
