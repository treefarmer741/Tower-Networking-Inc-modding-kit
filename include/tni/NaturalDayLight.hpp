#ifndef TNI_API_HEADER_NATURALDAYLIGHT
#define TNI_API_HEADER_NATURALDAYLIGHT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NaturalDayLight : public Node2D {
	using Node2D::Node2D;

	constexpr NaturalDayLight(Node2D base) : Node2D{base} {}
	constexpr NaturalDayLight(uint64_t addr) : Node2D{addr} {}
	constexpr NaturalDayLight(Object obj) : NaturalDayLight{obj.address()} {}
	NaturalDayLight(Variant variant) : NaturalDayLight{variant.as_object().address()} {}


	PROPERTY(light_color, Variant);

};



#endif
