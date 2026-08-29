#ifndef TNI_API_HEADER_UNTERMINATEDSPOOL
#define TNI_API_HEADER_UNTERMINATEDSPOOL
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PeripheralPlug.hpp"

struct UnterminatedSpool : public PeripheralPlug {
	using PeripheralPlug::PeripheralPlug;

	constexpr UnterminatedSpool(PeripheralPlug base) : PeripheralPlug{base} {}
	constexpr UnterminatedSpool(uint64_t addr) : PeripheralPlug{addr} {}
	constexpr UnterminatedSpool(Object obj) : UnterminatedSpool{obj.address()} {}
	UnterminatedSpool(Variant variant) : UnterminatedSpool{variant.as_object().address()} {}


	PROPERTY(start_termination_ps, PackedScene);
	PROPERTY(end_termination_ps, PackedScene);
	PROPERTY(allow_spool_variant, bool);
	PROPERTY(spool_variant, Variant);
	PROPERTY(color_variant, Variant);
	PROPERTY(cable_width, double);
	PROPERTY(color_plug_ends, bool);
	PROPERTY(max_spool_length, double);
	PROPERTY(remaining_length, double);
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

	inline void apply_color(Variant color_val);
	inline bool can_affix(double amount);
	inline bool use_length(double amount);
	inline void install();
	inline void uninstall();
	inline void boot_peripheral();
	inline void reposition(Variant new_pos);
	inline void elevator_move(Variant new_pos);
	inline void remove_and_free_object();
	inline PackedScene get_cable_make_scene();
	inline void set_highlight(bool enabled);
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

inline void UnterminatedSpool::apply_color(Variant color_val) { this->voidcall("apply_color", color_val); }
inline bool UnterminatedSpool::can_affix(double amount) { return this->operator()("can_affix", amount); }
inline bool UnterminatedSpool::use_length(double amount) { return this->operator()("use_length", amount); }
inline void UnterminatedSpool::install() { this->voidcall("install"); }
inline void UnterminatedSpool::uninstall() { this->voidcall("uninstall"); }
inline void UnterminatedSpool::boot_peripheral() { this->voidcall("boot_peripheral"); }
inline void UnterminatedSpool::reposition(Variant new_pos) { this->voidcall("reposition", new_pos); }
inline void UnterminatedSpool::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }
inline void UnterminatedSpool::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline PackedScene UnterminatedSpool::get_cable_make_scene() { return PackedScene(this->operator()("get_cable_make_scene").as_object().address()); }
inline void UnterminatedSpool::set_highlight(bool enabled) { this->voidcall("set_highlight", enabled); }
inline void UnterminatedSpool::apply_label(String text, Variant color, bool labelled) { this->voidcall("apply_label", text, color, labelled); }
inline void UnterminatedSpool::plug_in(Variant a) { this->voidcall("plug_in", a); }
inline bool UnterminatedSpool::drop(Variant impulse, bool skip_autoplug) { return this->operator()("drop", impulse, skip_autoplug); }
inline void UnterminatedSpool::srv_handle_pickup(const Socket& a) { this->voidcall("srv_handle_pickup", Object(reinterpret_cast<const Object*>(&a)->address())); }
inline bool UnterminatedSpool::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline void UnterminatedSpool::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void UnterminatedSpool::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant UnterminatedSpool::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline void UnterminatedSpool::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
