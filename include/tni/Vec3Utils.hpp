#ifndef TNI_API_HEADER_VEC3UTILS
#define TNI_API_HEADER_VEC3UTILS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Vec3Utils : public Object {
	using Object::Object;

	constexpr Vec3Utils(Object base) : Object{base} {}
	constexpr Vec3Utils(uint64_t addr) : Object{addr} {}
	Vec3Utils(Variant variant) : Vec3Utils{variant.as_object().address()} {}



	inline Variant align_basis_up(Variant basis_subj, Variant up_vector);
	inline void align_y(Node3D n3d, Variant y_normal);
	inline void align_z(Node3D n3d, Variant z_normal);
	inline Variant get_random_normal_vector3(int64_t seed_);
	inline void create_debug_sphere_at_globalpos(Variant gpos, double radius, Variant color, String lbl_str);
	inline void create_debug_box_at_globalpos(Variant gpos, Variant size, Variant zneg_dir, Variant color, String lbl_str);
	inline void create_debug_frustum(Variant near_corners, Variant far_corners, Variant color);
	inline Variant get_camera_projected_plane4p(Camera3D from_camera, Variant screen_top_left, Variant screen_bottom_right, double project_dist);
	inline Variant make_frustum_planes(Variant near, Variant far);
	inline Variant get_shape_aabb(Shape3D shape);
	inline bool aabb_intersects_plane(Variant aabb, Variant plane);
	inline bool body_within_enclosing_planes(CollisionObject3D body, Variant planes);
};


inline Variant Vec3Utils::align_basis_up(Variant basis_subj, Variant up_vector) { return this->operator()("align_basis_up", basis_subj, up_vector); }
inline void Vec3Utils::align_y(Node3D n3d, Variant y_normal) { this->voidcall("align_y", n3d, y_normal); }
inline void Vec3Utils::align_z(Node3D n3d, Variant z_normal) { this->voidcall("align_z", n3d, z_normal); }
inline Variant Vec3Utils::get_random_normal_vector3(int64_t seed_) { return this->operator()("get_random_normal_vector3", seed_); }
inline void Vec3Utils::create_debug_sphere_at_globalpos(Variant gpos, double radius, Variant color, String lbl_str) { this->voidcall("create_debug_sphere_at_globalpos", gpos, radius, color, lbl_str); }
inline void Vec3Utils::create_debug_box_at_globalpos(Variant gpos, Variant size, Variant zneg_dir, Variant color, String lbl_str) { this->voidcall("create_debug_box_at_globalpos", gpos, size, zneg_dir, color, lbl_str); }
inline void Vec3Utils::create_debug_frustum(Variant near_corners, Variant far_corners, Variant color) { this->voidcall("create_debug_frustum", near_corners, far_corners, color); }
inline Variant Vec3Utils::get_camera_projected_plane4p(Camera3D from_camera, Variant screen_top_left, Variant screen_bottom_right, double project_dist) { return this->operator()("get_camera_projected_plane4p", from_camera, screen_top_left, screen_bottom_right, project_dist); }
inline Variant Vec3Utils::make_frustum_planes(Variant near, Variant far) { return this->operator()("make_frustum_planes", near, far); }
inline Variant Vec3Utils::get_shape_aabb(Shape3D shape) { return this->operator()("get_shape_aabb", shape); }
inline bool Vec3Utils::aabb_intersects_plane(Variant aabb, Variant plane) { return this->operator()("aabb_intersects_plane", aabb, plane); }
inline bool Vec3Utils::body_within_enclosing_planes(CollisionObject3D body, Variant planes) { return this->operator()("body_within_enclosing_planes", body, planes); }

#endif
