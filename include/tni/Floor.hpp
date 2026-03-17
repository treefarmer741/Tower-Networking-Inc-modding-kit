#ifndef TNI_API_HEADER_FLOOR
#define TNI_API_HEADER_FLOOR
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Floor : public StaticBody2D {
	using StaticBody2D::StaticBody2D;

	constexpr Floor(StaticBody2D base) : StaticBody2D{base} {}
	constexpr Floor(uint64_t addr) : StaticBody2D{addr} {}
	constexpr Floor(Object obj) : Floor{obj.address()} {}
	Floor(Variant variant) : Floor{variant.as_object().address()} {}



};



#endif
