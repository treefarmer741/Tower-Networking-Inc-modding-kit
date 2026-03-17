#ifndef TNI_API_HEADER_PICKABLEDEVICE
#define TNI_API_HEADER_PICKABLEDEVICE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PickableDevice : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr PickableDevice(RigidBody2D base) : RigidBody2D{base} {}
	constexpr PickableDevice(uint64_t addr) : RigidBody2D{addr} {}
	constexpr PickableDevice(Object obj) : PickableDevice{obj.address()} {}
	PickableDevice(Variant variant) : PickableDevice{variant.as_object().address()} {}


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

	inline void reset_child_z_index();
	inline void lift_child_z_index(int64_t base_val);
	inline Variant get_picker_type(Variant test_picker);
	inline bool pickup(Variant new_picker);
	inline bool drop(Variant impulse);
	inline void setup_teleport(Variant gpos);
};


inline void PickableDevice::reset_child_z_index() { voidcall("reset_child_z_index"); }
inline void PickableDevice::lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
inline Variant PickableDevice::get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
inline bool PickableDevice::pickup(Variant new_picker) { return operator()("pickup", new_picker); }
inline bool PickableDevice::drop(Variant impulse) { return operator()("drop", impulse); }
inline void PickableDevice::setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }

#endif
