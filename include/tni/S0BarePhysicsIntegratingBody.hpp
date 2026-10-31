#ifndef TNI_API_HEADER_S0BAREPHYSICSINTEGRATINGBODY
#define TNI_API_HEADER_S0BAREPHYSICSINTEGRATINGBODY
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S0BarePhysicsIntegratingBody : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr S0BarePhysicsIntegratingBody(RigidBody2D base) : RigidBody2D{base} {}
	constexpr S0BarePhysicsIntegratingBody(uint64_t addr) : RigidBody2D{addr} {}
	constexpr S0BarePhysicsIntegratingBody(Object obj) : S0BarePhysicsIntegratingBody{obj.address()} {}
	S0BarePhysicsIntegratingBody(Variant variant) : S0BarePhysicsIntegratingBody{variant.as_object().address()} {}



};



#endif
