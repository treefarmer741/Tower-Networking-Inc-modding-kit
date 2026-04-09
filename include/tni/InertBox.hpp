#ifndef TNI_API_HEADER_INERTBOX
#define TNI_API_HEADER_INERTBOX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DeviceUnit.hpp"

struct InertBox : public DeviceUnit {
	using DeviceUnit::DeviceUnit;

	constexpr InertBox(DeviceUnit base) : DeviceUnit{base} {}
	constexpr InertBox(uint64_t addr) : DeviceUnit{addr} {}
	constexpr InertBox(Object obj) : InertBox{obj.address()} {}
	InertBox(Variant variant) : InertBox{variant.as_object().address()} {}


	PROPERTY(tear_sfx, AudioStreamPlayer2D);
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
	PROPERTY(device_application_unlocks, Variant);
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

	inline Variant get_slot(int64_t slotid);
	inline Variant is_empty();
	inline void tear(bool destroy);
	inline void apply_autoconfig();
	inline void reposition(Variant new_pos);
	inline void elevator_move(Variant new_pos);
	inline double get_device_bounding_height();
	inline Variant get_global_y_range();
	inline Variant get_local_y_range();
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

inline Variant InertBox::get_slot(int64_t slotid) { return this->operator()("get_slot", slotid); }
inline Variant InertBox::is_empty() { return this->operator()("is_empty"); }
inline void InertBox::tear(bool destroy) { this->voidcall("tear", destroy); }
inline void InertBox::apply_autoconfig() { this->voidcall("apply_autoconfig"); }
inline void InertBox::reposition(Variant new_pos) { this->voidcall("reposition", new_pos); }
inline void InertBox::elevator_move(Variant new_pos) { this->voidcall("elevator_move", new_pos); }
inline double InertBox::get_device_bounding_height() { return this->operator()("get_device_bounding_height"); }
inline Variant InertBox::get_global_y_range() { return this->operator()("get_global_y_range"); }
inline Variant InertBox::get_local_y_range() { return this->operator()("get_local_y_range"); }
inline Variant InertBox::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }
inline Variant InertBox::debug_mux_setup() { return this->operator()("debug_mux_setup"); }
inline Variant InertBox::update_in_trolley_state() { return this->operator()("update_in_trolley_state"); }
inline bool InertBox::pickup(Variant new_picker) { return this->operator()("pickup", new_picker); }
inline bool InertBox::drop(Variant impulse) { return this->operator()("drop", impulse); }
inline void InertBox::reset_child_z_index() { this->voidcall("reset_child_z_index"); }
inline void InertBox::set_autosvc(bool new_state) { this->voidcall("set_autosvc", new_state); }
inline void InertBox::update_user_note(String new_value) { this->voidcall("update_user_note", new_value); }
inline void InertBox::remove_and_free_object() { this->voidcall("remove_and_free_object"); }
inline void InertBox::lift_child_z_index(int64_t base_val) { this->voidcall("lift_child_z_index", base_val); }
inline Variant InertBox::get_picker_type(Variant test_picker) { return this->operator()("get_picker_type", test_picker); }
inline void InertBox::setup_teleport(Variant gpos) { this->voidcall("setup_teleport", gpos); }

#endif
