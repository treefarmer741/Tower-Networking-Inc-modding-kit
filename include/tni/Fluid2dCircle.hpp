#ifndef TNI_API_HEADER_FLUID2DCIRCLE
#define TNI_API_HEADER_FLUID2DCIRCLE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Fluid2dCircle : public Fluid2D {
	using Fluid2D::Fluid2D;

	constexpr Fluid2dCircle(Fluid2D base) : Fluid2D{base} {}
	constexpr Fluid2dCircle(uint64_t addr) : Fluid2D{addr} {}
	constexpr Fluid2dCircle(Object obj) : Fluid2dCircle{obj.address()} {}
	Fluid2dCircle(Variant variant) : Fluid2dCircle{variant.as_object().address()} {}


	PROPERTY(circle_radius, int64_t);

};



#endif
