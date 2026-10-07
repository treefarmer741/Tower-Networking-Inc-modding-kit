#ifndef TNI_API_HEADER_REFURBHUBEXPANSIONROUTER
#define TNI_API_HEADER_REFURBHUBEXPANSIONROUTER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PropMod.hpp"

struct RefurbHubExpansionRouter : public PropMod {
	using PropMod::PropMod;

	constexpr RefurbHubExpansionRouter(PropMod base) : PropMod{base} {}
	constexpr RefurbHubExpansionRouter(uint64_t addr) : PropMod{addr} {}
	constexpr RefurbHubExpansionRouter(Object obj) : RefurbHubExpansionRouter{obj.address()} {}
	RefurbHubExpansionRouter(Variant variant) : RefurbHubExpansionRouter{variant.as_object().address()} {}

	inline static const String techv = "refurb_expansion_r1";  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(cost, int64_t);
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

inline void RefurbHubExpansionRouter::apply_mod() { this->voidcall("apply_mod"); }
inline void RefurbHubExpansionRouter::activate_local_effects() { this->voidcall("activate_local_effects"); }
inline String RefurbHubExpansionRouter::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String RefurbHubExpansionRouter::get_lore() { return this->operator()("get_lore"); }
inline String RefurbHubExpansionRouter::get_description() { return this->operator()("get_description"); }
inline Variant RefurbHubExpansionRouter::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline void RefurbHubExpansionRouter::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline void RefurbHubExpansionRouter::update_state() { this->voidcall("update_state"); }
inline String RefurbHubExpansionRouter::get_tiered_display_name() { return this->operator()("get_tiered_display_name"); }
inline String RefurbHubExpansionRouter::get_unlock_condition_description() { return this->operator()("get_unlock_condition_description"); }

#endif
