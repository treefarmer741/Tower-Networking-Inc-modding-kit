#ifndef TNI_API_HEADER_DELTAVAREA3D
#define TNI_API_HEADER_DELTAVAREA3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeltaVArea3D : public Area3D {
	using Area3D::Area3D;

	constexpr DeltaVArea3D(Area3D base) : Area3D{base} {}
	constexpr DeltaVArea3D(uint64_t addr) : Area3D{addr} {}
	constexpr DeltaVArea3D(Object obj) : DeltaVArea3D{obj.address()} {}
	DeltaVArea3D(Variant variant) : DeltaVArea3D{variant.as_object().address()} {}


	PROPERTY(rigids_under_influence, Variant);

	inline void affect_rigid_body(RigidBody3D body, double time_delta);
};


inline void DeltaVArea3D::affect_rigid_body(RigidBody3D body, double time_delta) { voidcall("affect_rigid_body", body, time_delta); }

#endif
