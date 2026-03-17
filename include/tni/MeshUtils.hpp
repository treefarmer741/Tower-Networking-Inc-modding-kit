#ifndef TNI_API_HEADER_MESHUTILS
#define TNI_API_HEADER_MESHUTILS
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MeshUtils : public Object {
	using Object::Object;

	constexpr MeshUtils(Object base) : Object{base} {}
	constexpr MeshUtils(uint64_t addr) : Object{addr} {}
	MeshUtils(Variant variant) : MeshUtils{variant.as_object().address()} {}



	inline void reladjust_node3d_ypos_above_zero(Node3D n3d);
	inline Variant get_node3d_aabb_from_visual_instances(Node3D n3d, bool recurse);
};


inline void MeshUtils::reladjust_node3d_ypos_above_zero(Node3D n3d) { voidcall("reladjust_node3d_ypos_above_zero", n3d); }
inline Variant MeshUtils::get_node3d_aabb_from_visual_instances(Node3D n3d, bool recurse) { return operator()("get_node3d_aabb_from_visual_instances", n3d, recurse); }

#endif
