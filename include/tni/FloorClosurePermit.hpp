#ifndef TNI_API_HEADER_FLOORCLOSUREPERMIT
#define TNI_API_HEADER_FLOORCLOSUREPERMIT
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "SecretariatCreditMod.hpp"

struct FloorClosurePermit : public SecretariatCreditMod {
	using SecretariatCreditMod::SecretariatCreditMod;

	constexpr FloorClosurePermit(SecretariatCreditMod base) : SecretariatCreditMod{base} {}
	constexpr FloorClosurePermit(uint64_t addr) : SecretariatCreditMod{addr} {}
	constexpr FloorClosurePermit(Object obj) : FloorClosurePermit{obj.address()} {}
	FloorClosurePermit(Variant variant) : FloorClosurePermit{variant.as_object().address()} {}

	PROPERTY(OUTAGE_MOD, Variant);  // Const value type was not supported.
	static constexpr int64_t MAX_DAYS = 5;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(closures, Variant);
	PROPERTY(secretariat_credit_cost, int64_t);
	PROPERTY(effect_duration, int64_t);
	PROPERTY(repeatable, bool);
	PROPERTY(submitted_on_day, int64_t);
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

	inline Variant get_closure_floors();
	inline int64_t get_closure_max_days();
	inline int64_t get_closure_cost(int64_t n_floors, int64_t days);
	inline void set_submit_options(Variant options);
	inline int64_t get_submit_cost();
	inline void apply_mod();
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline void submit_and_apply();
	inline Variant test_adhoc_requirements();
	inline void deactivate_local_effects();
	inline void expire_effect();
	inline void update_state();
	inline void activate_local_effects();
	inline String get_tiered_display_name();
	inline String get_unlock_condition_description();
};

#include "PropMod.hpp"

inline Variant FloorClosurePermit::get_closure_floors() { return this->operator()("get_closure_floors"); }
inline int64_t FloorClosurePermit::get_closure_max_days() { return this->operator()("get_closure_max_days"); }
inline int64_t FloorClosurePermit::get_closure_cost(int64_t n_floors, int64_t days) { return this->operator()("get_closure_cost", n_floors, days); }
inline void FloorClosurePermit::set_submit_options(Variant options) { this->voidcall("set_submit_options", options); }
inline int64_t FloorClosurePermit::get_submit_cost() { return this->operator()("get_submit_cost"); }
inline void FloorClosurePermit::apply_mod() { this->voidcall("apply_mod"); }
inline String FloorClosurePermit::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String FloorClosurePermit::get_lore() { return this->operator()("get_lore"); }
inline String FloorClosurePermit::get_description() { return this->operator()("get_description"); }
inline void FloorClosurePermit::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline Variant FloorClosurePermit::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline void FloorClosurePermit::deactivate_local_effects() { this->voidcall("deactivate_local_effects"); }
inline void FloorClosurePermit::expire_effect() { this->voidcall("expire_effect"); }
inline void FloorClosurePermit::update_state() { this->voidcall("update_state"); }
inline void FloorClosurePermit::activate_local_effects() { this->voidcall("activate_local_effects"); }
inline String FloorClosurePermit::get_tiered_display_name() { return this->operator()("get_tiered_display_name"); }
inline String FloorClosurePermit::get_unlock_condition_description() { return this->operator()("get_unlock_condition_description"); }

#endif
