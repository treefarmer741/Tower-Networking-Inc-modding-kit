#ifndef TNI_API_HEADER_BLADETHIRTY
#define TNI_API_HEADER_BLADETHIRTY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BladeThirty : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr BladeThirty(RigidBody2D base) : RigidBody2D{base} {}
	constexpr BladeThirty(uint64_t addr) : RigidBody2D{addr} {}
	constexpr BladeThirty(Object obj) : BladeThirty{obj.address()} {}
	BladeThirty(Variant variant) : BladeThirty{variant.as_object().address()} {}


	PROPERTY(bs, String);
	PROPERTY(product_name, String);
	PROPERTY(description, String);
	PROPERTY(text, String);
	PROPERTY(extra_descriptions, int64_t);
	PROPERTY(price, int64_t);
	PROPERTY(alternate_listing_image, Texture2D);
	PROPERTY(base_warranty_days, int64_t);
	PROPERTY(base_warranty_cycles, int64_t);
	PROPERTY(sale_warranty, int64_t);
	PROPERTY(recycle_price_factor, double);
	PROPERTY(recycle_price, int64_t);
	PROPERTY(force_auto_config_powctl_based_on_logctl, bool);
	PROPERTY(force_auto_config_nbw_based_on_ports, bool);
	PROPERTY(force_auto_config_logctl_powerload, bool);
	PROPERTY(warranty_period_remaining, int64_t);
	PROPERTY(defect_possibility, bool);
	PROPERTY(auto_config_bw_multiplier, double);
	PROPERTY(auto_config_pload_multiplier, double);
	PROPERTY(obtained_from, String);
	PROPERTY(custom_user_note, String);
	PROPERTY(asset_registration_day, int64_t);
	PROPERTY(auto_servicing_enabled, bool);
	PROPERTY(auto_replacement_cost, int64_t);
	PROPERTY(current_floor_num, int64_t);
	PROPERTY(device_hardware_class, int64_t);
	PROPERTY(condition, int64_t);
	PROPERTY(mount_type, int64_t);
	PROPERTY(bw_per_second, double);
	PROPERTY(reliability_flt, double);
	PROPERTY(device_rendered_description, String);
	PROPERTY(logic_controller, LogicController);
	PROPERTY(power_controller, PowerController);
	PROPERTY(mp_spawn, MultiplayerSpawner);
	PROPERTY(mwtwn, Tween);
	PROPERTY(base_mounted_area, Variant);
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

	inline void apply_autoconfig();
	inline void reposition(Variant new_pos);
	inline void elevator_move(Variant new_pos);
	inline Variant debug_monitor_callback();
	inline Variant debug_mux_setup();
	inline Variant update_in_trolley_state();
	inline bool pickup(Variant new_picker);
	inline bool drop(Variant impulse);
	inline void reset_child_z_index();
	inline void set_autosvc(bool new_state);
	inline void update_user_note(String new_value);
	inline void remove_and_free_object();
	inline void lift_child_z_index(int64_t base_val);
	inline Variant get_picker_type(Variant test_picker);
	inline void setup_teleport(Variant gpos);
};

#include "LogicController.hpp"
#include "PowerController.hpp"

inline void BladeThirty::apply_autoconfig() { voidcall("apply_autoconfig"); }
inline void BladeThirty::reposition(Variant new_pos) { voidcall("reposition", new_pos); }
inline void BladeThirty::elevator_move(Variant new_pos) { voidcall("elevator_move", new_pos); }
inline Variant BladeThirty::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline Variant BladeThirty::debug_mux_setup() { return operator()("debug_mux_setup"); }
inline Variant BladeThirty::update_in_trolley_state() { return operator()("update_in_trolley_state"); }
inline bool BladeThirty::pickup(Variant new_picker) { return operator()("pickup", new_picker); }
inline bool BladeThirty::drop(Variant impulse) { return operator()("drop", impulse); }
inline void BladeThirty::reset_child_z_index() { voidcall("reset_child_z_index"); }
inline void BladeThirty::set_autosvc(bool new_state) { voidcall("set_autosvc", new_state); }
inline void BladeThirty::update_user_note(String new_value) { voidcall("update_user_note", new_value); }
inline void BladeThirty::remove_and_free_object() { voidcall("remove_and_free_object"); }
inline void BladeThirty::lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
inline Variant BladeThirty::get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
inline void BladeThirty::setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }

#endif
