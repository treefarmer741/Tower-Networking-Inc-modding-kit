#ifndef TNI_API_HEADER_VIEWPORT3DUTILS
#define TNI_API_HEADER_VIEWPORT3DUTILS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Viewport3DUtils : public Object {
	using Object::Object;

	constexpr Viewport3DUtils(Object base) : Object{base} {}
	constexpr Viewport3DUtils(uint64_t addr) : Object{addr} {}
	Viewport3DUtils(Variant variant) : Viewport3DUtils{variant.as_object().address()} {}

	static constexpr double MAX_RAY_DEFAULT = 1000.0;  // NOTE: You should recompile your mod if this value changes!


	inline Variant get_mouse_raycast_cd_with_collision_plane(Viewport vp, World3D w3d, Variant mask, double max_ray_units);
	inline Variant get_mouse_raycast_point_with_fixed_height_plane(Viewport vp, double plane_height, double max_ray_units);
};


inline Variant Viewport3DUtils::get_mouse_raycast_cd_with_collision_plane(Viewport vp, World3D w3d, Variant mask, double max_ray_units) { return operator()("get_mouse_raycast_cd_with_collision_plane", vp, w3d, mask, max_ray_units); }
inline Variant Viewport3DUtils::get_mouse_raycast_point_with_fixed_height_plane(Viewport vp, double plane_height, double max_ray_units) { return operator()("get_mouse_raycast_point_with_fixed_height_plane", vp, plane_height, max_ray_units); }

#endif
