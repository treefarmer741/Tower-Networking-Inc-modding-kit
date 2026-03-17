#ifndef TNI_API_HEADER_MERCHANTLISTINGMOD
#define TNI_API_HEADER_MERCHANTLISTINGMOD
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MerchantListingMod : public Node {
	using Node::Node;

	constexpr MerchantListingMod(Node base) : Node{base} {}
	constexpr MerchantListingMod(uint64_t addr) : Node{addr} {}
	constexpr MerchantListingMod(Object obj) : MerchantListingMod{obj.address()} {}
	MerchantListingMod(Variant variant) : MerchantListingMod{variant.as_object().address()} {}


	PROPERTY(merchant_scn, PackedScene);
	PROPERTY(new_price_multiplier, double);
	PROPERTY(new_price_add_constant, int64_t);
	PROPERTY(new_warranty_multiplier, double);
	PROPERTY(new_warranty_add_constant, int64_t);
	PROPERTY(max_stock_change, int64_t);
	PROPERTY(listing_whitelist, Variant);
	PROPERTY(listing_blacklist, Variant);
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
	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
	inline void apply_mod();
	inline String get_description();
	inline String get_proposal_name();
	inline String get_lore();
};

#include "PropMod.hpp"

inline void MerchantListingMod::activate_local_effects() { voidcall("activate_local_effects"); }
inline Variant MerchantListingMod::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void MerchantListingMod::submit_and_apply() { voidcall("submit_and_apply"); }
inline void MerchantListingMod::update_state() { voidcall("update_state"); }
inline void MerchantListingMod::apply_mod() { voidcall("apply_mod"); }
inline String MerchantListingMod::get_description() { return operator()("get_description"); }
inline String MerchantListingMod::get_proposal_name() { return operator()("get_proposal_name"); }
inline String MerchantListingMod::get_lore() { return operator()("get_lore"); }

#endif
