#ifndef TNI_API_HEADER_HALLWAYPROP
#define TNI_API_HEADER_HALLWAYPROP
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct HallwayProp : public Sprite2D {
	using Sprite2D::Sprite2D;

	constexpr HallwayProp(Sprite2D base) : Sprite2D{base} {}
	constexpr HallwayProp(uint64_t addr) : Sprite2D{addr} {}
	constexpr HallwayProp(Object obj) : HallwayProp{obj.address()} {}
	HallwayProp(Variant variant) : HallwayProp{variant.as_object().address()} {}


	PROPERTY(res, int64_t);
	PROPERTY(h, double);
	PROPERTY(s, double);
	PROPERTY(v, double);

};



#endif
