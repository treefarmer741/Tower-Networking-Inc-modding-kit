#ifndef TNI_API_HEADER_GRAVITYSPHEREAREA3D
#define TNI_API_HEADER_GRAVITYSPHEREAREA3D
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DeltaVSphereArea3D.hpp"

struct GravitySphereArea3D : public DeltaVSphereArea3D {
	using DeltaVSphereArea3D::DeltaVSphereArea3D;

	constexpr GravitySphereArea3D(DeltaVSphereArea3D base) : DeltaVSphereArea3D{base} {}
	constexpr GravitySphereArea3D(uint64_t addr) : DeltaVSphereArea3D{addr} {}
	constexpr GravitySphereArea3D(Object obj) : GravitySphereArea3D{obj.address()} {}
	GravitySphereArea3D(Variant variant) : GravitySphereArea3D{variant.as_object().address()} {}


	PROPERTY(force, double);
	PROPERTY(falloff, Curve);
	PROPERTY(sphere_radius, double);
	PROPERTY(rigids_under_influence, Variant);

	inline void affect_rigid_body(RigidBody3D body, double _time_delta);
};


inline void GravitySphereArea3D::affect_rigid_body(RigidBody3D body, double _time_delta) { this->voidcall("affect_rigid_body", body, _time_delta); }

#endif
