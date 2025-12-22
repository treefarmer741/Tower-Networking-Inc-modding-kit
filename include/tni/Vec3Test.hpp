#ifndef TNI_API_HEADER_VEC3TEST
#define TNI_API_HEADER_VEC3TEST
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Vec3Test : public Node3D {
	using Node3D::Node3D;

	constexpr Vec3Test(Node3D base) : Node3D{base} {}
	constexpr Vec3Test(uint64_t addr) : Node3D{addr} {}
	constexpr Vec3Test(Object obj) : Vec3Test{obj.address()} {}
	Vec3Test(Variant variant) : Vec3Test{variant.as_object().address()} {}


	PROPERTY(label_text, String);

};



#endif
