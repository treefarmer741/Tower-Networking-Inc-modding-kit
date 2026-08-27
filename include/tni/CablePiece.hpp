#ifndef TNI_API_HEADER_CABLEPIECE
#define TNI_API_HEADER_CABLEPIECE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CablePiece : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr CablePiece(RigidBody2D base) : RigidBody2D{base} {}
	constexpr CablePiece(uint64_t addr) : RigidBody2D{addr} {}
	constexpr CablePiece(Object obj) : CablePiece{obj.address()} {}
	CablePiece(Variant variant) : CablePiece{variant.as_object().address()} {}

	PROPERTY(PlugLabelScene, Variant);  // Const value type was not supported.

	PROPERTY(cable_joint, PinJoint2D);
	PROPERTY(coiling_joint, PinJoint2D);
	PROPERTY(plug_label, PanelContainer);

	inline PanelContainer get_or_create_plug_label();
	inline void reset_collision();
	inline void disable_collision();
};


inline PanelContainer CablePiece::get_or_create_plug_label() { return PanelContainer(this->operator()("get_or_create_plug_label").as_object().address()); }
inline void CablePiece::reset_collision() { this->voidcall("reset_collision"); }
inline void CablePiece::disable_collision() { this->voidcall("disable_collision"); }

#endif
