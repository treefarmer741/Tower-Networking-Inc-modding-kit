#ifndef TNI_API_HEADER_INTEGRATINGBODY
#define TNI_API_HEADER_INTEGRATINGBODY
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct IntegratingBody : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr IntegratingBody(RigidBody2D base) : RigidBody2D{base} {}
	constexpr IntegratingBody(uint64_t addr) : RigidBody2D{addr} {}
	constexpr IntegratingBody(Object obj) : IntegratingBody{obj.address()} {}
	IntegratingBody(Variant variant) : IntegratingBody{variant.as_object().address()} {}



};



#endif
