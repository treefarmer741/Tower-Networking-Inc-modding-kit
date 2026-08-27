#ifndef TNI_API_HEADER_PLAYOPTIONS
#define TNI_API_HEADER_PLAYOPTIONS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PlayOptions : public Resource {
	using Resource::Resource;

	constexpr PlayOptions(Resource base) : Resource{base} {}
	constexpr PlayOptions(uint64_t addr) : Resource{addr} {}
	constexpr PlayOptions(Object obj) : PlayOptions{obj.address()} {}
	PlayOptions(Variant variant) : PlayOptions{variant.as_object().address()} {}

	enum struct DiffDir : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NEUTRAL = 0,
		LOWER_HARDER = 1,
		HIGHER_HARDER = 2,
	};
	static constexpr double EASIER_EPSILON = 0.0001;  // NOTE: You should recompile your mod if this value changes!
	enum struct DIFFICULTY_DIRECTIONS : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		rng_seed_str = 0,
		print_connectivity_troubleshooting_help = 0,
		max_nwaddr_len = 0,
		day_period = 0,
		netaddr_required_for_requests = 0,
		local_dns_mapping = 0,
		debugger_access_costs_bandwidth = 0,
		device_collisions = 0,
		program_autostart = 0,
		user_hwreset_probability = 0,
		tower_wide_user_dhcp_default = 0,
		tower_wide_device_dhcp_default = 0,
		dhcp_origin_ignores_routing = 0,
		starting_datacenter_path = 0,
		early_floorbuild_bonus_factor = 0,
		ppu_change_fee = 0,
		ph_domain_scaling_factor_1 = 0,
		tenabolt_penalty = 0,
		lab_mode = 0,
		start_amount_override = 0,
		resource_local_to_scene = 0,
		locked_game_options = 0,
		scenario_name = 0,
		deprecated = 0,
		only_available_in_editor = 0,
		randomize_seed_on_menu = 0,
		is_user_onboarding = 0,
		floor_build_maximum_floors = 1,
		onboarding_max_days_in_q = 1,
		floor_build_period_multiplier = 1,
		freeplay = 1,
		limitless_money = 1,
		waive_power_fee = 1,
		auto_create_dns_mappings = 1,
		infinite_bandwidth_mode = 1,
		see_error_hints_in_world = 1,
		memento_replacement_rate = 2,
		starting_cash = 1,
		max_days_in_debt = 1,
		user_grace_days_multiplier = 1,
		user_sla_breach_time_factor_multiplier = 1,
		proposal_refresh = 1,
		proposal_batch_size = 1,
		socket_installation_cost = 2,
		device_warranty_period_multiplier = 1,
		network_outage_notice_factor = 1,
		memento_daily_rate_per_device = 2,
		user_fee_payment_multiplier = 2,
		daily_admin_expenses = 2,
		admin_fee_scaling_multiplier = 2,
		device_malfunction_occurrence_rate = 2,
		power_outage_occurrence_rate = 2,
		power_surge_occurrence_rate = 2,
		cybattack_occurrence_rate = 2,
	};

	PROPERTY(rng_seed_str, String);
	PROPERTY(starting_cash, int64_t);
	PROPERTY(day_period, int64_t);
	PROPERTY(freeplay, bool);
	PROPERTY(limitless_money, bool);
	PROPERTY(waive_power_fee, bool);
	PROPERTY(auto_create_dns_mappings, bool);
	PROPERTY(print_connectivity_troubleshooting_help, bool);
	PROPERTY(see_error_hints_in_world, bool);
	PROPERTY(infinite_bandwidth_mode, bool);
	PROPERTY(netaddr_required_for_requests, bool);
	PROPERTY(max_days_in_debt, int64_t);
	PROPERTY(user_fee_payment_multiplier, double);
	PROPERTY(daily_admin_expenses, int64_t);
	PROPERTY(user_grace_days_multiplier, double);
	PROPERTY(user_sla_breach_time_factor_multiplier, double);
	PROPERTY(proposal_refresh, int64_t);
	PROPERTY(proposal_batch_size, int64_t);
	PROPERTY(device_collisions, bool);
	PROPERTY(debugger_access_costs_bandwidth, bool);
	PROPERTY(local_dns_mapping, bool);
	PROPERTY(program_autostart, bool);
	PROPERTY(socket_installation_cost, int64_t);
	PROPERTY(device_malfunction_occurrence_rate, double);
	PROPERTY(power_outage_occurrence_rate, double);
	PROPERTY(power_surge_occurrence_rate, double);
	PROPERTY(device_warranty_period_multiplier, double);
	PROPERTY(floor_build_maximum_floors, int64_t);
	PROPERTY(network_outage_notice_factor, int64_t);
	PROPERTY(admin_fee_scaling_multiplier, double);
	PROPERTY(onboarding_max_days_in_q, int64_t);
	PROPERTY(cybattack_occurrence_rate, double);
	PROPERTY(user_hwreset_probability, double);
	PROPERTY(memento_daily_rate_per_device, int64_t);
	PROPERTY(memento_replacement_rate, double);
	PROPERTY(early_floorbuild_bonus_factor, int64_t);
	PROPERTY(max_nwaddr_len, int64_t);
	PROPERTY(ppu_change_fee, int64_t);
	PROPERTY(ph_domain_scaling_factor_1, int64_t);
	PROPERTY(lab_mode, bool);
	PROPERTY(floor_build_period_multiplier, double);
	PROPERTY(tenabolt_penalty, int64_t);
	PROPERTY(start_amount_override, int64_t);
	PROPERTY(tower_wide_user_dhcp_default, String);
	PROPERTY(tower_wide_device_dhcp_default, String);
	PROPERTY(dhcp_origin_ignores_routing, bool);
	PROPERTY(starting_datacenter_path, String);

	inline void set_vals_from_dict(Variant pod);
	inline PackedArray<std::string> get_easier_deviations(const PlayOptions& baseline);
	inline bool is_no_easier_than(const PlayOptions& baseline);
	inline void verify_direction_coverage();
	inline int64_t get_difficulty_hash();
	inline void set_easy_mode();
	inline void set_hard_mode();
	inline void set_mp_mode();
	inline void set_zen_mode();
	inline void set_hard_zen_mode();
};

#include "PlayOptions.hpp"

inline void PlayOptions::set_vals_from_dict(Variant pod) { this->voidcall("set_vals_from_dict", pod); }
inline PackedArray<std::string> PlayOptions::get_easier_deviations(const PlayOptions& baseline) { return this->operator()("get_easier_deviations", Object(reinterpret_cast<const Object*>(&baseline)->address())); }
inline bool PlayOptions::is_no_easier_than(const PlayOptions& baseline) { return this->operator()("is_no_easier_than", Object(reinterpret_cast<const Object*>(&baseline)->address())); }
inline void PlayOptions::verify_direction_coverage() { this->voidcall("verify_direction_coverage"); }
inline int64_t PlayOptions::get_difficulty_hash() { return this->operator()("get_difficulty_hash"); }
inline void PlayOptions::set_easy_mode() { this->voidcall("set_easy_mode"); }
inline void PlayOptions::set_hard_mode() { this->voidcall("set_hard_mode"); }
inline void PlayOptions::set_mp_mode() { this->voidcall("set_mp_mode"); }
inline void PlayOptions::set_zen_mode() { this->voidcall("set_zen_mode"); }
inline void PlayOptions::set_hard_zen_mode() { this->voidcall("set_hard_zen_mode"); }

#endif
