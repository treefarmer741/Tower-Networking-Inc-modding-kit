#ifndef TNI_API_HEADER_PROPMOD
#define TNI_API_HEADER_PROPMOD
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PropMod : public Node {
	using Node::Node;

	constexpr PropMod(Node base) : Node{base} {}
	constexpr PropMod(uint64_t addr) : Node{addr} {}
	constexpr PropMod(Object obj) : PropMod{obj.address()} {}
	PropMod(Variant variant) : PropMod{variant.as_object().address()} {}


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

	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
	inline void apply_mod();
	inline void activate_local_effects();
	inline String get_description();
	inline String get_proposal_name();
	inline String get_lore();
};

#include "PropMod.hpp"

inline Variant PropMod::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void PropMod::submit_and_apply() { voidcall("submit_and_apply"); }
inline void PropMod::update_state() { voidcall("update_state"); }
inline void PropMod::apply_mod() { voidcall("apply_mod"); }
inline void PropMod::activate_local_effects() { voidcall("activate_local_effects"); }
inline String PropMod::get_description() { return operator()("get_description"); }
inline String PropMod::get_proposal_name() { return operator()("get_proposal_name"); }
inline String PropMod::get_lore() { return operator()("get_lore"); }

#endif
