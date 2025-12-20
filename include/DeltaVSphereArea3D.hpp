#ifndef TNI_API_HEADER_DELTAVSPHEREAREA3D
#define TNI_API_HEADER_DELTAVSPHEREAREA3D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeltaVSphereArea3D : public Area3D {
	using Area3D::Area3D;

	constexpr DeltaVSphereArea3D(Area3D base) : Area3D{base} {}
	constexpr DeltaVSphereArea3D(uint64_t addr) : Area3D{addr} {}
	constexpr DeltaVSphereArea3D(Object obj) : DeltaVSphereArea3D{obj.address()} {}
	DeltaVSphereArea3D(Variant variant) : DeltaVSphereArea3D{variant.as_object().address()} {}


	PROPERTY(sphere_radius, double);
	PROPERTY(rigids_under_influence, Variant);

	inline void affect_rigid_body(RigidBody3D body, double time_delta);
};


inline void DeltaVSphereArea3D::affect_rigid_body(RigidBody3D body, double time_delta) { voidcall("affect_rigid_body", body, time_delta); }

#endif
