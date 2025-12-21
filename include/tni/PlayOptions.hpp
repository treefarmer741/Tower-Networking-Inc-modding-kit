#ifndef TNI_API_HEADER_PLAYOPTIONS
#define TNI_API_HEADER_PLAYOPTIONS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlayOptions : public Resource {
	using Resource::Resource;

	constexpr PlayOptions(Resource base) : Resource{base} {}
	constexpr PlayOptions(uint64_t addr) : Resource{addr} {}
	constexpr PlayOptions(Object obj) : PlayOptions{obj.address()} {}
	PlayOptions(Variant variant) : PlayOptions{variant.as_object().address()} {}


	PROPERTY(rng_seed_str, String);
	PROPERTY(starting_cash, int64_t);
	PROPERTY(day_period, int64_t);
	PROPERTY(freeplay, bool);
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

	inline void set_vals_from_dict(Variant pod);
	inline int64_t get_difficulty_hash();
	inline void set_easy_mode();
	inline void set_hard_mode();
	inline void set_mp_mode();
	inline void set_zen_mode();
	inline void set_hard_zen_mode();
};


inline void PlayOptions::set_vals_from_dict(Variant pod) { voidcall("set_vals_from_dict", pod); }
inline int64_t PlayOptions::get_difficulty_hash() { return operator()("get_difficulty_hash"); }
inline void PlayOptions::set_easy_mode() { voidcall("set_easy_mode"); }
inline void PlayOptions::set_hard_mode() { voidcall("set_hard_mode"); }
inline void PlayOptions::set_mp_mode() { voidcall("set_mp_mode"); }
inline void PlayOptions::set_zen_mode() { voidcall("set_zen_mode"); }
inline void PlayOptions::set_hard_zen_mode() { voidcall("set_hard_zen_mode"); }

#endif
