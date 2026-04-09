#ifndef TNI_API_HEADER_AUTONIGHTLIGHT
#define TNI_API_HEADER_AUTONIGHTLIGHT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct AutoNightLight : public Node2D {
	using Node2D::Node2D;

	constexpr AutoNightLight(Node2D base) : Node2D{base} {}
	constexpr AutoNightLight(uint64_t addr) : Node2D{addr} {}
	constexpr AutoNightLight(Object obj) : AutoNightLight{obj.address()} {}
	AutoNightLight(Variant variant) : AutoNightLight{variant.as_object().address()} {}


	PROPERTY(location, Location);
	PROPERTY(light_ray, Variant);

};

#include "Location.hpp"


#endif
