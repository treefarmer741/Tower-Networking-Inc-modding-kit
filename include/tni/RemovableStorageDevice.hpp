#ifndef TNI_API_HEADER_REMOVABLESTORAGEDEVICE
#define TNI_API_HEADER_REMOVABLESTORAGEDEVICE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RemovableStorageDevice : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr RemovableStorageDevice(RigidBody2D base) : RigidBody2D{base} {}
	constexpr RemovableStorageDevice(uint64_t addr) : RigidBody2D{addr} {}
	constexpr RemovableStorageDevice(Object obj) : RemovableStorageDevice{obj.address()} {}
	RemovableStorageDevice(Variant variant) : RemovableStorageDevice{variant.as_object().address()} {}


	PROPERTY(available_sto, int64_t);
	PROPERTY(product_name, String);
	PROPERTY(price, int64_t);
	PROPERTY(description, String);
	PROPERTY(alternate_listing_image, Texture2D);
	PROPERTY(rendered_description, String);
	PROPERTY(mwtwn, Tween);
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

	inline void install();
	inline void uninstall();
	inline void boot_peripheral();
	inline void reposition(Variant new_pos);
	inline void elevator_move(Variant new_pos);
	inline void remove_and_free_object();
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

inline void RemovableStorageDevice::install() { voidcall("install"); }
inline void RemovableStorageDevice::uninstall() { voidcall("uninstall"); }
inline void RemovableStorageDevice::boot_peripheral() { voidcall("boot_peripheral"); }
inline void RemovableStorageDevice::reposition(Variant new_pos) { voidcall("reposition", new_pos); }
inline void RemovableStorageDevice::elevator_move(Variant new_pos) { voidcall("elevator_move", new_pos); }
inline void RemovableStorageDevice::remove_and_free_object() { voidcall("remove_and_free_object"); }
inline void RemovableStorageDevice::apply_color(Variant color_val) { voidcall("apply_color", color_val); }
inline void RemovableStorageDevice::plug_in(Variant a) { voidcall("plug_in", a); }
inline bool RemovableStorageDevice::drop(Variant impulse) { return operator()("drop", impulse); }
inline void RemovableStorageDevice::srv_handle_pickup(Socket a) { voidcall("srv_handle_pickup", a); }
inline bool RemovableStorageDevice::pickup(Variant new_picker) { return operator()("pickup", new_picker); }
inline void RemovableStorageDevice::reset_child_z_index() { voidcall("reset_child_z_index"); }
inline void RemovableStorageDevice::lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
inline Variant RemovableStorageDevice::get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
inline void RemovableStorageDevice::setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }

#endif
