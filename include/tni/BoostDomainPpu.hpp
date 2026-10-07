#ifndef TNI_API_HEADER_BOOSTDOMAINPPU
#define TNI_API_HEADER_BOOSTDOMAINPPU
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "SecretariatCreditMod.hpp"

struct BoostDomainPpu : public SecretariatCreditMod {
	using SecretariatCreditMod::SecretariatCreditMod;

	constexpr BoostDomainPpu(SecretariatCreditMod base) : SecretariatCreditMod{base} {}
	constexpr BoostDomainPpu(uint64_t addr) : SecretariatCreditMod{addr} {}
	constexpr BoostDomainPpu(Object obj) : BoostDomainPpu{obj.address()} {}
	BoostDomainPpu(Variant variant) : BoostDomainPpu{variant.as_object().address()} {}


	PROPERTY(ppu_boost_amount, double);
	PROPERTY(selected_fqdn, String);
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

	inline void activate_local_effects();
	inline void deactivate_local_effects();
	inline Variant get_domain_options();
	inline Variant test_adhoc_requirements();
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline void apply_mod();
	inline void submit_and_apply();
	inline void expire_effect();
	inline void update_state();
	inline String get_tiered_display_name();
	inline String get_unlock_condition_description();
};

#include "PropMod.hpp"

inline void BoostDomainPpu::activate_local_effects() { this->voidcall("activate_local_effects"); }
inline void BoostDomainPpu::deactivate_local_effects() { this->voidcall("deactivate_local_effects"); }
inline Variant BoostDomainPpu::get_domain_options() { return this->operator()("get_domain_options"); }
inline Variant BoostDomainPpu::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline String BoostDomainPpu::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String BoostDomainPpu::get_lore() { return this->operator()("get_lore"); }
inline String BoostDomainPpu::get_description() { return this->operator()("get_description"); }
inline void BoostDomainPpu::apply_mod() { this->voidcall("apply_mod"); }
inline void BoostDomainPpu::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline void BoostDomainPpu::expire_effect() { this->voidcall("expire_effect"); }
inline void BoostDomainPpu::update_state() { this->voidcall("update_state"); }
inline String BoostDomainPpu::get_tiered_display_name() { return this->operator()("get_tiered_display_name"); }
inline String BoostDomainPpu::get_unlock_condition_description() { return this->operator()("get_unlock_condition_description"); }

#endif
