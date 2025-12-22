#ifndef TNI_API_HEADER_FLOORSHAPE
#define TNI_API_HEADER_FLOORSHAPE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FloorShape : public CollisionPolygon2D {
	using CollisionPolygon2D::CollisionPolygon2D;

	constexpr FloorShape(CollisionPolygon2D base) : CollisionPolygon2D{base} {}
	constexpr FloorShape(uint64_t addr) : CollisionPolygon2D{addr} {}
	constexpr FloorShape(Object obj) : FloorShape{obj.address()} {}
	FloorShape(Variant variant) : FloorShape{variant.as_object().address()} {}


	PROPERTY(width, double);
	PROPERTY(height, double);
	PROPERTY(seed, String);

};



#endif
