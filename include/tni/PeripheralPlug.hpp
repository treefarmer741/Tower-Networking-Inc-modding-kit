#ifndef TNI_API_HEADER_PERIPHERALPLUG
#define TNI_API_HEADER_PERIPHERALPLUG
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "Plug.hpp"

struct PeripheralPlug : public Plug {
	using Plug::Plug;

	constexpr PeripheralPlug(Plug base) : Plug{base} {}
	constexpr PeripheralPlug(uint64_t addr) : Plug{addr} {}
	constexpr PeripheralPlug(Object obj) : PeripheralPlug{obj.address()} {}
	PeripheralPlug(Variant variant) : PeripheralPlug{variant.as_object().address()} {}


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

inline void PeripheralPlug::install() { this->voidcall("install"); }
inline void PeripheralPlug::uninstall() { this->voidcall("uninstall"); }
inline void PeripheralPlug::boot_peripheral() { this->voidcall("boot_peripheral"); }
inline void PeripheralPlug::reposition(Variant new_pos) { this->voidcall("reposition", new_pos); }
inline void PeripheralPlug::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }
inline void PeripheralPlug::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline void PeripheralPlug::apply_color(Variant color_val) { this->voidcall("apply_color", color_val); }
inline void PeripheralPlug::plug_in(Variant a) { this->voidcall("plug_in", a); }
inline bool PeripheralPlug::drop(Variant impulse, bool skip_autoplug) { return this->operator()("drop", impulse, skip_autoplug); }
inline void PeripheralPlug::srv_handle_pickup(const Socket& a) { this->voidcall("srv_handle_pickup", Object(reinterpret_cast<const Object*>(&a)->address())); }
inline bool PeripheralPlug::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline void PeripheralPlug::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void PeripheralPlug::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant PeripheralPlug::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline void PeripheralPlug::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
