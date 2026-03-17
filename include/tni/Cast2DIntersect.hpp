#ifndef TNI_API_HEADER_CAST2DINTERSECT
#define TNI_API_HEADER_CAST2DINTERSECT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Cast2DIntersect : public Object {
	using Object::Object;

	constexpr Cast2DIntersect(Object base) : Object{base} {}
	constexpr Cast2DIntersect(uint64_t addr) : Object{addr} {}
	Cast2DIntersect(Variant variant) : Cast2DIntersect{variant.as_object().address()} {}



	inline Variant get_colliders_only(Variant intsx, Variant sort_z_index);
	inline Variant pointcast(Node2D node, Variant mask, Variant max_detect, Variant sort_z_index);
	inline Variant pointcast_detached(PhysicsDirectSpaceState2D space_state, Variant point, Variant mask, Variant max_detect, Variant sort_z_index);
	inline Variant shapecast(CollisionObject2D node, Variant max_detect, Variant sort_z_index, int64_t mask_override);
	inline Variant multishapecast_detached(PhysicsDirectSpaceState2D space_state, CollisionObject2D detached_node, Variant base_transform, Variant excludes, Variant max_detect, Variant sort_z_index, int64_t mask_override);
	inline Variant shapecast_detached(PhysicsDirectSpaceState2D space_state, Shape2D shape, Variant transform, Variant excludes, Variant mask, Variant max_detect, Variant sort_z_index);
	inline bool greater_pick_priority(Variant a, Variant b);
	inline int64_t get_type_priority(Variant obj);
};


inline Variant Cast2DIntersect::get_colliders_only(Variant intsx, Variant sort_z_index) { return operator()("get_colliders_only", intsx, sort_z_index); }
inline Variant Cast2DIntersect::pointcast(Node2D node, Variant mask, Variant max_detect, Variant sort_z_index) { return operator()("pointcast", node, mask, max_detect, sort_z_index); }
inline Variant Cast2DIntersect::pointcast_detached(PhysicsDirectSpaceState2D space_state, Variant point, Variant mask, Variant max_detect, Variant sort_z_index) { return operator()("pointcast_detached", space_state, point, mask, max_detect, sort_z_index); }
inline Variant Cast2DIntersect::shapecast(CollisionObject2D node, Variant max_detect, Variant sort_z_index, int64_t mask_override) { return operator()("shapecast", node, max_detect, sort_z_index, mask_override); }
inline Variant Cast2DIntersect::multishapecast_detached(PhysicsDirectSpaceState2D space_state, CollisionObject2D detached_node, Variant base_transform, Variant excludes, Variant max_detect, Variant sort_z_index, int64_t mask_override) { return operator()("multishapecast_detached", space_state, detached_node, base_transform, excludes, max_detect, sort_z_index, mask_override); }
inline Variant Cast2DIntersect::shapecast_detached(PhysicsDirectSpaceState2D space_state, Shape2D shape, Variant transform, Variant excludes, Variant mask, Variant max_detect, Variant sort_z_index) { return operator()("shapecast_detached", space_state, shape, transform, excludes, mask, max_detect, sort_z_index); }
inline bool Cast2DIntersect::greater_pick_priority(Variant a, Variant b) { return operator()("greater_pick_priority", a, b); }
inline int64_t Cast2DIntersect::get_type_priority(Variant obj) { return operator()("get_type_priority", obj); }

#endif
