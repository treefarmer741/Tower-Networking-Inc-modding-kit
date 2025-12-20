#ifndef TNI_API_HEADER_WALL
#define TNI_API_HEADER_WALL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Wall : public StaticBody2D {
	using StaticBody2D::StaticBody2D;

	constexpr Wall(StaticBody2D base) : StaticBody2D{base} {}
	constexpr Wall(uint64_t addr) : StaticBody2D{addr} {}
	constexpr Wall(Object obj) : Wall{obj.address()} {}
	Wall(Variant variant) : Wall{variant.as_object().address()} {}



};



#endif
