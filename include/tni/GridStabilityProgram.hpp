#ifndef TNI_API_HEADER_GRIDSTABILITYPROGRAM
#define TNI_API_HEADER_GRIDSTABILITYPROGRAM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "OutageSurgePropMod.hpp"

struct GridStabilityProgram : public OutageSurgePropMod {
	using OutageSurgePropMod::OutageSurgePropMod;

	constexpr GridStabilityProgram(OutageSurgePropMod base) : OutageSurgePropMod{base} {}
	constexpr GridStabilityProgram(uint64_t addr) : OutageSurgePropMod{addr} {}
	constexpr GridStabilityProgram(Object obj) : GridStabilityProgram{obj.address()} {}
	GridStabilityProgram(Variant variant) : GridStabilityProgram{variant.as_object().address()} {}


	PROPERTY(target_user_profiles, Variant);
	PROPERTY(target_behaviors, Variant);
	PROPERTY(min_healthy_count, int64_t);
	PROPERTY(users_per_step, int64_t);
	PROPERTY(check_interval, double);
	PROPERTY(surge_increase, double);
	PROPERTY(outage_increase, double);
	PROPERTY(stamp_duty, int64_t);
	PROPERTY(submitted, bool);
	PROPERTY(locked, bool);
	PROPERTY(depends_on, PropMod);
	PROPERTY(disallow_proposal_if_depends_submitted, bool);
	PROPERTY(icon_texture, Texture2D);
	PROPERTY(can_be_proposed_beginning, int64_t);
	PROPERTY(disabled_due_to_config_errors, bool);
	PROPERTY(weight, int64_t);
	PROPERTY(proposed_on, int64_t);
	PROPERTY(force_once_on_day, int64_t);
	PROPERTY(can_be_proposed, bool);
	PROPERTY(is_active_proposal, bool);

	inline void apply_mod();
	inline void activate_local_effects();
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
	inline String get_tiered_display_name();
	inline String get_unlock_condition_description();
};

#include "PropMod.hpp"

inline void GridStabilityProgram::apply_mod() { this->voidcall("apply_mod"); }
inline void GridStabilityProgram::activate_local_effects() { this->voidcall("activate_local_effects"); }
inline String GridStabilityProgram::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String GridStabilityProgram::get_lore() { return this->operator()("get_lore"); }
inline String GridStabilityProgram::get_description() { return this->operator()("get_description"); }
inline Variant GridStabilityProgram::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline void GridStabilityProgram::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline void GridStabilityProgram::update_state() { this->voidcall("update_state"); }
inline String GridStabilityProgram::get_tiered_display_name() { return this->operator()("get_tiered_display_name"); }
inline String GridStabilityProgram::get_unlock_condition_description() { return this->operator()("get_unlock_condition_description"); }

#endif
