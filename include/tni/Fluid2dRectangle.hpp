#ifndef TNI_API_HEADER_FLUID2DRECTANGLE
#define TNI_API_HEADER_FLUID2DRECTANGLE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Fluid2dRectangle : public Fluid2D {
	using Fluid2D::Fluid2D;

	constexpr Fluid2dRectangle(Fluid2D base) : Fluid2D{base} {}
	constexpr Fluid2dRectangle(uint64_t addr) : Fluid2D{addr} {}
	constexpr Fluid2dRectangle(Object obj) : Fluid2dRectangle{obj.address()} {}
	Fluid2dRectangle(Variant variant) : Fluid2dRectangle{variant.as_object().address()} {}


	PROPERTY(height, int64_t);
	PROPERTY(width, int64_t);

};



#endif
