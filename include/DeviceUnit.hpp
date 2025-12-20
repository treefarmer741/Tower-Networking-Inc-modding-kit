#ifndef TNI_API_HEADER_DEVICEUNIT
#define TNI_API_HEADER_DEVICEUNIT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceUnit : public RigidBody2D {
	using RigidBody2D::RigidBody2D;

	constexpr DeviceUnit(RigidBody2D base) : RigidBody2D{base} {}
	constexpr DeviceUnit(uint64_t addr) : RigidBody2D{addr} {}
	constexpr DeviceUnit(Object obj) : DeviceUnit{obj.address()} {}
	DeviceUnit(Variant variant) : DeviceUnit{variant.as_object().address()} {}

	static constexpr int64_t ZINDEX = 200;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t MAX_PRICE = 1000000;  // NOTE: You should recompile your mod if this value changes!
	enum Condition : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NORMAL = 0,
		GENERAL_FAILURE = 1,
		OVERVOLTAGE_DAMAGE = 2,
	};
	enum DeviceHardwareClass : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		DEFAULT = 0,
		NETWORK_SWITCH = 1,
		NETWORK_ROUTER = 2,
		NETWORK_TAP = 3,
		NETWORK_FIREWALL = 4,
		MEDIA_LINE_SIMPLEX = 5,
		MEDIA_LINE_DUPLEX = 6,
		COMPUTE_SERVER = 7,
		DISPLAY_MONITOR = 8,
		DEBUGGER = 9,
		LOAD_TESTER = 10,
		POWER_EXPANSION = 11,
		DECENTRO_RIGS = 12,
		SURGE_PROTECTOR = 13,
		UPS = 14,
		INERT = 15,
		CCTV = 16,
		PHONE = 17,
		PRINTER = 18,
		NETWORK_LOAD_BALANCER = 19,
	};
	enum ExtraDescriptionType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NODESCRIPT = 0,
		BW_PER_TICK = 1,
		CMSBW_BASIC = 2,
		POWER_SUPPLY = 3,
		CABLE_O_MATIC = 4,
	};
	enum MountType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NA = 0,
		R500 = 1,
		R930 = 2,
		R550 = 3,
	};

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

inline void DeviceUnit::apply_autoconfig() { voidcall("apply_autoconfig"); }
inline void DeviceUnit::reposition(Variant new_pos) { voidcall("reposition", new_pos); }
inline void DeviceUnit::elevator_move(Variant new_pos) { voidcall("elevator_move", new_pos); }
inline Variant DeviceUnit::debug_monitor_callback() { return operator()("debug_monitor_callback"); }
inline Variant DeviceUnit::debug_mux_setup() { return operator()("debug_mux_setup"); }
inline Variant DeviceUnit::update_in_trolley_state() { return operator()("update_in_trolley_state"); }
inline bool DeviceUnit::pickup(Variant new_picker) { return operator()("pickup", new_picker); }
inline bool DeviceUnit::drop(Variant impulse) { return operator()("drop", impulse); }
inline void DeviceUnit::reset_child_z_index() { voidcall("reset_child_z_index"); }
inline void DeviceUnit::set_autosvc(bool new_state) { voidcall("set_autosvc", new_state); }
inline void DeviceUnit::update_user_note(String new_value) { voidcall("update_user_note", new_value); }
inline void DeviceUnit::remove_and_free_object() { voidcall("remove_and_free_object"); }
inline void DeviceUnit::lift_child_z_index(int64_t base_val) { voidcall("lift_child_z_index", base_val); }
inline Variant DeviceUnit::get_picker_type(Variant test_picker) { return operator()("get_picker_type", test_picker); }
inline void DeviceUnit::setup_teleport(Variant gpos) { voidcall("setup_teleport", gpos); }

#endif
