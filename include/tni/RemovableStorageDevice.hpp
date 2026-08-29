#ifndef TNI_API_HEADER_REMOVABLESTORAGEDEVICE
#define TNI_API_HEADER_REMOVABLESTORAGEDEVICE
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PeripheralPlug.hpp"

struct RemovableStorageDevice : public PeripheralPlug {
	using PeripheralPlug::PeripheralPlug;

	constexpr RemovableStorageDevice(PeripheralPlug base) : PeripheralPlug{base} {}
	constexpr RemovableStorageDevice(uint64_t addr) : PeripheralPlug{addr} {}
	constexpr RemovableStorageDevice(Object obj) : RemovableStorageDevice{obj.address()} {}
	RemovableStorageDevice(Variant variant) : RemovableStorageDevice{variant.as_object().address()} {}


	PROPERTY(available_sto, int64_t);
	PROPERTY(claims, Variant);
	PROPERTY(payload, Variant);
	PROPERTY(used_capacity, int64_t);
	PROPERTY(free_capacity, int64_t);
	PROPERTY(product_name, String);
	PROPERTY(price, int64_t);
	PROPERTY(description, String);
	PROPERTY(alternate_listing_image, Texture2D);
	PROPERTY(rendered_description, String);
	PROPERTY(mwtwn, Tween);
	PROPERTY(compatibles, Variant);
	PROPERTY(ripped_cable_ps, PackedScene);
	PROPERTY(cable_make_type, int64_t);
	PROPERTY(connection, Variant);
	PROPERTY(cable_joint, PinJoint2D);
	PROPERTY(attached_device_unit, DeviceUnit);
	PROPERTY(controller, GraphController);
	PROPERTY(fixed_pick_offset, Variant);
	PROPERTY(is_plugged_in, bool);
	PROPERTY(applied_color, Variant);
	PROPERTY(is_labelled, bool);
	PROPERTY(label_text, String);
	PROPERTY(label_color, Variant);
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
	inline Variant can_claim(Variant ctl, String filekey, bool ignore_current_holder);
	inline void claim_file(String filekey);
	inline Variant can_release(String filekey);
	inline void release_file(String filekey);
	inline void wipe();
	inline void boot_peripheral();
	inline void reposition(Variant new_pos);
	inline void elevator_move(Variant new_pos);
	inline void remove_and_free_object();
	inline PackedScene get_cable_make_scene();
	inline void set_highlight(bool enabled);
	inline void apply_color(Variant color_val);
	inline void apply_label(String text, Variant color, bool labelled);
	inline void plug_in(Variant a);
	inline bool drop(Variant impulse, bool skip_autoplug);
	inline void srv_handle_pickup(const Socket& a);
	inline bool pickup(Variant new_picker);
	inline void reset_child_z_index();
	inline void lift_child_z_index(int64_t base_val);
	inline Variant get_picker_type(Variant test_picker);
	inline void setup_teleport(Variant gpos);
};

#include "DeviceUnit.hpp"
#include "GraphController.hpp"
#include "Socket.hpp"

inline void RemovableStorageDevice::install() { this->voidcall("install"); }
inline void RemovableStorageDevice::uninstall() { this->voidcall("uninstall"); }
inline Variant RemovableStorageDevice::can_claim(Variant ctl, String filekey, bool ignore_current_holder) { return this->operator()("can_claim", ctl, filekey, ignore_current_holder); }
inline void RemovableStorageDevice::claim_file(String filekey) { this->voidcall("claim_file", filekey); }
inline Variant RemovableStorageDevice::can_release(String filekey) { return this->operator()("can_release", filekey); }
inline void RemovableStorageDevice::release_file(String filekey) { this->voidcall("release_file", filekey); }
inline void RemovableStorageDevice::wipe() { this->voidcall("wipe"); }
inline void RemovableStorageDevice::boot_peripheral() { this->voidcall("boot_peripheral"); }
inline void RemovableStorageDevice::reposition(Variant new_pos) { this->voidcall("reposition", new_pos); }
inline void RemovableStorageDevice::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }
inline void RemovableStorageDevice::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline PackedScene RemovableStorageDevice::get_cable_make_scene() { return PackedScene(this->operator()("get_cable_make_scene").as_object().address()); }
inline void RemovableStorageDevice::set_highlight(bool enabled) { this->voidcall("set_highlight", enabled); }
inline void RemovableStorageDevice::apply_color(Variant color_val) { this->voidcall("apply_color", color_val); }
inline void RemovableStorageDevice::apply_label(String text, Variant color, bool labelled) { this->voidcall("apply_label", text, color, labelled); }
inline void RemovableStorageDevice::plug_in(Variant a) { this->voidcall("plug_in", a); }
inline bool RemovableStorageDevice::drop(Variant impulse, bool skip_autoplug) { return this->operator()("drop", impulse, skip_autoplug); }
inline void RemovableStorageDevice::srv_handle_pickup(const Socket& a) { this->voidcall("srv_handle_pickup", Object(reinterpret_cast<const Object*>(&a)->address())); }
inline bool RemovableStorageDevice::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline void RemovableStorageDevice::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void RemovableStorageDevice::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant RemovableStorageDevice::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline void RemovableStorageDevice::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
