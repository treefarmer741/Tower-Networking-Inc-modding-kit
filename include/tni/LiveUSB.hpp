#ifndef TNI_API_HEADER_LIVEUSB
#define TNI_API_HEADER_LIVEUSB
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RemovableStorageDevice.hpp"

struct LiveUSB : public RemovableStorageDevice {
	using RemovableStorageDevice::RemovableStorageDevice;

	constexpr LiveUSB(RemovableStorageDevice base) : RemovableStorageDevice{base} {}
	constexpr LiveUSB(uint64_t addr) : RemovableStorageDevice{addr} {}
	constexpr LiveUSB(Object obj) : LiveUSB{obj.address()} {}
	LiveUSB(Variant variant) : LiveUSB{variant.as_object().address()} {}


	PROPERTY(program_scene, PackedScene);
	PROPERTY(extra_storage, int64_t);
	PROPERTY(available_sto, int64_t);
	PROPERTY(claims, Variant);
	PROPERTY(payload, Variant);
	PROPERTY(used_capacity, int64_t);
	PROPERTY(free_capacity, int64_t);
	PROPERTY(payload_cost, int64_t);
	PROPERTY(product_name, String);
	PROPERTY(price, int64_t);
	PROPERTY(description, String);
	PROPERTY(alternate_listing_image, Texture2D);
	PROPERTY(rendered_description, String);
	PROPERTY(mwtwn, Tween);
	PROPERTY(compatibles, Variant);
	PROPERTY(ripped_cable_ps, PackedScene);
	PROPERTY(cable_make_type, int64_t);
	PROPERTY(color_plug_end, bool);
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

	inline void boot_peripheral();
	inline void install();
	inline Variant can_release(String filekey);
	inline void release_file(String filekey);
	inline void uninstall();
	inline Variant can_claim(Variant ctl, String filekey, bool ignore_current_holder);
	inline void claim_file(String filekey);
	inline void wipe();
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

inline void LiveUSB::boot_peripheral() { this->voidcall("boot_peripheral"); }
inline void LiveUSB::install() { this->voidcall("install"); }
inline Variant LiveUSB::can_release(String filekey) { return this->operator()("can_release", filekey); }
inline void LiveUSB::release_file(String filekey) { this->voidcall("release_file", filekey); }
inline void LiveUSB::uninstall() { this->voidcall("uninstall"); }
inline Variant LiveUSB::can_claim(Variant ctl, String filekey, bool ignore_current_holder) { return this->operator()("can_claim", ctl, filekey, ignore_current_holder); }
inline void LiveUSB::claim_file(String filekey) { this->voidcall("claim_file", filekey); }
inline void LiveUSB::wipe() { this->voidcall("wipe"); }
inline void LiveUSB::reposition(Variant new_pos) { this->voidcall("reposition", new_pos); }
inline void LiveUSB::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }
inline void LiveUSB::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline PackedScene LiveUSB::get_cable_make_scene() { return PackedScene(this->operator()("get_cable_make_scene").as_object().address()); }
inline void LiveUSB::set_highlight(bool enabled) { this->voidcall("set_highlight", enabled); }
inline void LiveUSB::apply_color(Variant color_val) { this->voidcall("apply_color", color_val); }
inline void LiveUSB::apply_label(String text, Variant color, bool labelled) { this->voidcall("apply_label", text, color, labelled); }
inline void LiveUSB::plug_in(Variant a) { this->voidcall("plug_in", a); }
inline bool LiveUSB::drop(Variant impulse, bool skip_autoplug) { return this->operator()("drop", impulse, skip_autoplug); }
inline void LiveUSB::srv_handle_pickup(const Socket& a) { this->voidcall("srv_handle_pickup", Object(reinterpret_cast<const Object*>(&a)->address())); }
inline bool LiveUSB::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline void LiveUSB::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void LiveUSB::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant LiveUSB::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline void LiveUSB::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
