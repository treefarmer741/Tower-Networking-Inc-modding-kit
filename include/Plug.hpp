#ifndef TNI_API_HEADER_PLUG
#define TNI_API_HEADER_PLUG
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct Plug : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	static const int64_t ZINDEX = 500;  // NOTE: You may need to recompile your mod if this value changes!

	Plug(Variant variant) : Plug{variant.as_object().address()} {}

	PROPERTY(compatibles, Variant);
	PROPERTY(connection, Variant);
	PROPERTY(cable_joint, Variant);
	PROPERTY(attached_device_unit, Variant);
	PROPERTY(controller, Variant);
	PROPERTY(fixed_pick_offset, Variant);
	PROPERTY(is_plugged_in, bool);
	PROPERTY(applied_color, Variant);
	PROPERTY(hard_contact_tolerance, double);
	PROPERTY(hard_contact_audio, Variant);
	PROPERTY(base_size, Variant);
	PROPERTY(scaling_twn, Variant);
	PROPERTY(picker, Variant);
	PROPERTY(pick_offset, Variant);
	PROPERTY(fixed, bool);
	PROPERTY(is_picked_by_mouse, bool);
	PROPERTY(is_picked, bool);
	PROPERTY(is_picked_by_attaching, bool);
	PROPERTY(picker_type, int64_t);

	inline void apply_color(Variant color_val) { voidcall("apply_color", color_val); }
	inline void plug_in(Variant a) { voidcall("plug_in", a); }
	inline bool drop(Variant impulse) { return operator()("drop", impulse); }
	inline void srv_handle_pickup(Variant a) { voidcall("srv_handle_pickup", a); }
	inline bool pickup(Variant new_picker) { return operator()("pickup", new_picker); }
	inline void reset_child_z_index() { voidcall("reset_child_z_index"); }
	inline void lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
	inline Variant get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
	inline void setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }
};

#endif
