#ifndef TNI_API_HEADER_SUPPORTCABLERSUNIONMERCHANT
#define TNI_API_HEADER_SUPPORTCABLERSUNIONMERCHANT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PropMod.hpp"

struct SupportCablersUnionMerchant : public PropMod {
	using PropMod::PropMod;

	constexpr SupportCablersUnionMerchant(PropMod base) : PropMod{base} {}
	constexpr SupportCablersUnionMerchant(uint64_t addr) : PropMod{addr} {}
	constexpr SupportCablersUnionMerchant(Object obj) : SupportCablersUnionMerchant{obj.address()} {}
	SupportCablersUnionMerchant(Variant variant) : SupportCablersUnionMerchant{variant.as_object().address()} {}


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
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
	inline void activate_local_effects();
};

#include "PropMod.hpp"

inline void SupportCablersUnionMerchant::apply_mod() { this->voidcall("apply_mod"); }
inline String SupportCablersUnionMerchant::get_proposal_name() { return this->operator()("get_proposal_name"); }
inline String SupportCablersUnionMerchant::get_lore() { return this->operator()("get_lore"); }
inline String SupportCablersUnionMerchant::get_description() { return this->operator()("get_description"); }
inline Variant SupportCablersUnionMerchant::test_adhoc_requirements() { return this->operator()("test_adhoc_requirements"); }
inline void SupportCablersUnionMerchant::submit_and_apply() { this->voidcall("submit_and_apply"); }
inline void SupportCablersUnionMerchant::update_state() { this->voidcall("update_state"); }
inline void SupportCablersUnionMerchant::activate_local_effects() { this->voidcall("activate_local_effects"); }

#endif
