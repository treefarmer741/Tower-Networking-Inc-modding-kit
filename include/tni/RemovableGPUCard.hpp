#ifndef TNI_API_HEADER_REMOVABLEGPUCARD
#define TNI_API_HEADER_REMOVABLEGPUCARD
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PeripheralPlug.hpp"

struct RemovableGPUCard : public PeripheralPlug {
	using PeripheralPlug::PeripheralPlug;

	constexpr RemovableGPUCard(PeripheralPlug base) : PeripheralPlug{base} {}
	constexpr RemovableGPUCard(uint64_t addr) : PeripheralPlug{addr} {}
	constexpr RemovableGPUCard(Object obj) : RemovableGPUCard{obj.address()} {}
	RemovableGPUCard(Variant variant) : RemovableGPUCard{variant.as_object().address()} {}


	PROPERTY(available_gpu, int64_t);
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

inline void RemovableGPUCard::install() { this->voidcall("install"); }
inline void RemovableGPUCard::uninstall() { this->voidcall("uninstall"); }
inline void RemovableGPUCard::boot_peripheral() { this->voidcall("boot_peripheral"); }
inline void RemovableGPUCard::reposition(Variant new_pos) { this->voidcall("reposition", new_pos); }
inline void RemovableGPUCard::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }
inline void RemovableGPUCard::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline PackedScene RemovableGPUCard::get_cable_make_scene() { return PackedScene(this->operator()("get_cable_make_scene").as_object().address()); }
inline void RemovableGPUCard::set_highlight(bool enabled) { this->voidcall("set_highlight", enabled); }
inline void RemovableGPUCard::apply_color(Variant color_val) { this->voidcall("apply_color", color_val); }
inline void RemovableGPUCard::apply_label(String text, Variant color, bool labelled) { this->voidcall("apply_label", text, color, labelled); }
inline void RemovableGPUCard::plug_in(Variant a) { this->voidcall("plug_in", a); }
inline bool RemovableGPUCard::drop(Variant impulse, bool skip_autoplug) { return this->operator()("drop", impulse, skip_autoplug); }
inline void RemovableGPUCard::srv_handle_pickup(const Socket& a) { this->voidcall("srv_handle_pickup", Object(reinterpret_cast<const Object*>(&a)->address())); }
inline bool RemovableGPUCard::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline void RemovableGPUCard::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void RemovableGPUCard::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant RemovableGPUCard::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline void RemovableGPUCard::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
