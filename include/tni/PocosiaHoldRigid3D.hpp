#ifndef TNI_API_HEADER_POCOSIAHOLDRIGID3D
#define TNI_API_HEADER_POCOSIAHOLDRIGID3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaHoldRigid3D : public Node3D {
	using Node3D::Node3D;

	constexpr PocosiaHoldRigid3D(Node3D base) : Node3D{base} {}
	constexpr PocosiaHoldRigid3D(uint64_t addr) : Node3D{addr} {}
	constexpr PocosiaHoldRigid3D(Object obj) : PocosiaHoldRigid3D{obj.address()} {}
	PocosiaHoldRigid3D(Variant variant) : PocosiaHoldRigid3D{variant.as_object().address()} {}


	PROPERTY(hold_body_collision_exception, NodePath);
	PROPERTY(rt3d, RemoteTransform3D);
	PROPERTY(current_hold, RigidBody3D);

	inline void hold(RigidBody3D r3b);
};


inline void PocosiaHoldRigid3D::hold(RigidBody3D r3b) { voidcall("hold", r3b); }

#endif
