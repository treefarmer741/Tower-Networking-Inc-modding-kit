#ifndef TNI_API_HEADER_TRAYANCHORPOINT
#define TNI_API_HEADER_TRAYANCHORPOINT
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TrayAnchorPoint : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr TrayAnchorPoint(RigidBody2D base) : RigidBody2D{base} {}
	constexpr TrayAnchorPoint(uint64_t addr) : RigidBody2D{addr} {}
	constexpr TrayAnchorPoint(Object obj) : TrayAnchorPoint{obj.address()} {}
	TrayAnchorPoint(Variant variant) : TrayAnchorPoint{variant.as_object().address()} {}


	PROPERTY(cable_joint, PinJoint2D);
	PROPERTY(is_picked, bool);
	PROPERTY(is_picked_by_mouse, bool);
	PROPERTY(is_picked_by_attaching, bool);

	inline bool drop(Variant _impulse);
	inline bool pickup(Variant _new_picker);
};


inline bool TrayAnchorPoint::drop(Variant _impulse) { return this->operator()("drop", _impulse); }
inline bool TrayAnchorPoint::pickup(Variant _new_picker) { return this->operator()("pickup", _new_picker); }

#endif
