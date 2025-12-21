#ifndef TNI_API_HEADER_VEC3UTILS
#define TNI_API_HEADER_VEC3UTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Vec3Utils : public Object {
	using Object::Object;

	constexpr Vec3Utils(Object base) : Object{base} {}
	constexpr Vec3Utils(uint64_t addr) : Object{addr} {}
	Vec3Utils(Variant variant) : Vec3Utils{variant.as_object().address()} {}



	inline void align_y(Node3D n3d, Variant y_normal);
	inline void align_z(Node3D n3d, Variant z_normal);
};


inline void Vec3Utils::align_y(Node3D n3d, Variant y_normal) { voidcall("align_y", n3d, y_normal); }
inline void Vec3Utils::align_z(Node3D n3d, Variant z_normal) { voidcall("align_z", n3d, z_normal); }

#endif
