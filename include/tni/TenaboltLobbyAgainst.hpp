#ifndef TNI_API_HEADER_TENABOLTLOBBYAGAINST
#define TNI_API_HEADER_TENABOLTLOBBYAGAINST
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TenaboltLobbyAgainst : public Node {
	using Node::Node;

	constexpr TenaboltLobbyAgainst(Node base) : Node{base} {}
	constexpr TenaboltLobbyAgainst(uint64_t addr) : Node{addr} {}
	constexpr TenaboltLobbyAgainst(Object obj) : TenaboltLobbyAgainst{obj.address()} {}
	TenaboltLobbyAgainst(Variant variant) : TenaboltLobbyAgainst{variant.as_object().address()} {}


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
	inline void apply_mod();
	inline String get_proposal_name();
	inline String get_lore();
	inline String get_description();
	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
};

#include "PropMod.hpp"

inline void TenaboltLobbyAgainst::activate_local_effects() { voidcall("activate_local_effects"); }
inline void TenaboltLobbyAgainst::apply_mod() { voidcall("apply_mod"); }
inline String TenaboltLobbyAgainst::get_proposal_name() { return operator()("get_proposal_name"); }
inline String TenaboltLobbyAgainst::get_lore() { return operator()("get_lore"); }
inline String TenaboltLobbyAgainst::get_description() { return operator()("get_description"); }
inline Variant TenaboltLobbyAgainst::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void TenaboltLobbyAgainst::submit_and_apply() { voidcall("submit_and_apply"); }
inline void TenaboltLobbyAgainst::update_state() { voidcall("update_state"); }

#endif
