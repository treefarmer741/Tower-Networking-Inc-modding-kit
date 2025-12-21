#ifndef TNI_API_HEADER_CABLEPIECE
#define TNI_API_HEADER_CABLEPIECE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CablePiece : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr CablePiece(RigidBody2D base) : RigidBody2D{base} {}
	constexpr CablePiece(uint64_t addr) : RigidBody2D{addr} {}
	constexpr CablePiece(Object obj) : CablePiece{obj.address()} {}
	CablePiece(Variant variant) : CablePiece{variant.as_object().address()} {}


	PROPERTY(cable_joint, PinJoint2D);
	PROPERTY(coiling_joint, PinJoint2D);

	inline void reset_collision();
	inline void disable_collision();
};


inline void CablePiece::reset_collision() { voidcall("reset_collision"); }
inline void CablePiece::disable_collision() { voidcall("disable_collision"); }

#endif
