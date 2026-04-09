#ifndef TNI_API_HEADER_DELTAVSPHEREAREA3D
#define TNI_API_HEADER_DELTAVSPHEREAREA3D
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DeltaVArea3D.hpp"

struct DeltaVSphereArea3D : public DeltaVArea3D {
	using DeltaVArea3D::DeltaVArea3D;

	constexpr DeltaVSphereArea3D(DeltaVArea3D base) : DeltaVArea3D{base} {}
	constexpr DeltaVSphereArea3D(uint64_t addr) : DeltaVArea3D{addr} {}
	constexpr DeltaVSphereArea3D(Object obj) : DeltaVSphereArea3D{obj.address()} {}
	DeltaVSphereArea3D(Variant variant) : DeltaVSphereArea3D{variant.as_object().address()} {}


	PROPERTY(sphere_radius, double);
	PROPERTY(rigids_under_influence, Variant);

	inline void affect_rigid_body(RigidBody3D body, double time_delta);
};


inline void DeltaVSphereArea3D::affect_rigid_body(RigidBody3D body, double time_delta) { this->voidcall("affect_rigid_body", body, time_delta); }

#endif
