#ifndef TNI_API_HEADER_PLUG
#define TNI_API_HEADER_PLUG
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Plug : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr Plug(RigidBody2D base) : RigidBody2D{base} {}
	constexpr Plug(uint64_t addr) : RigidBody2D{addr} {}
	constexpr Plug(Object obj) : Plug{obj.address()} {}
	Plug(Variant variant) : Plug{variant.as_object().address()} {}

	static constexpr int64_t ZINDEX = 500;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(compatibles, Variant);
	PROPERTY(connection, Variant);
	PROPERTY(cable_joint, PinJoint2D);
	PROPERTY(attached_device_unit, DeviceUnit);
	PROPERTY(controller, GraphController);
	PROPERTY(fixed_pick_offset, Variant);
	PROPERTY(is_plugged_in, bool);
	PROPERTY(applied_color, Variant);
	PROPERTY(hard_contact_tolerance, double);
	PROPERTY(hard_contact_audio, AudioStreamPlayer2D);
	PROPERTY(base_size, Variant);
	PROPERTY(scaling_twn, Tween);
	PROPERTY(picker, Variant);
	PROPERTY(pick_offset, Variant);
	PROPERTY(fixed, bool);
	PROPERTY(is_picked_by_mouse, bool);
	PROPERTY(is_picked, bool);
	PROPERTY(is_picked_by_attaching, bool);
	PROPERTY(picker_type, int64_t);

	inline void apply_color(Variant color_val);
	inline void plug_in(Variant a);
	inline bool drop(Variant impulse);
	inline void srv_handle_pickup(Socket a);
	inline bool pickup(Variant new_picker);
	inline void reset_child_z_index();
	inline void lift_child_z_index(int64_t base_val);
	inline Variant get_picker_type(Variant test_picker);
	inline void setup_teleport(Variant gpos);
};

#include "DeviceUnit.hpp"
#include "GraphController.hpp"
#include "Socket.hpp"

inline void Plug::apply_color(Variant color_val) { voidcall("apply_color", color_val); }
inline void Plug::plug_in(Variant a) { voidcall("plug_in", a); }
inline bool Plug::drop(Variant impulse) { return operator()("drop", impulse); }
inline void Plug::srv_handle_pickup(Socket a) { voidcall("srv_handle_pickup", a); }
inline bool Plug::pickup(Variant new_picker) { return operator()("pickup", new_picker); }
inline void Plug::reset_child_z_index() { voidcall("reset_child_z_index"); }
inline void Plug::lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
inline Variant Plug::get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
inline void Plug::setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }

#endif
