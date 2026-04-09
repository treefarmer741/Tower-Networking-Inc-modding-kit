#ifndef TNI_API_HEADER_PICKABLEDEVICE
#define TNI_API_HEADER_PICKABLEDEVICE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PickableRigidBody2D.hpp"

struct PickableDevice : public PickableRigidBody2D {
	using PickableRigidBody2D::PickableRigidBody2D;

	constexpr PickableDevice(PickableRigidBody2D base) : PickableRigidBody2D{base} {}
	constexpr PickableDevice(uint64_t addr) : PickableRigidBody2D{addr} {}
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


inline void PickableDevice::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void PickableDevice::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant PickableDevice::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline bool PickableDevice::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline bool PickableDevice::drop(Variant impulse) { return this->operator()("drop", impulse); }
inline void PickableDevice::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
