#ifndef TNI_API_HEADER_OVERVOLTAGEDIRECTIVE
#define TNI_API_HEADER_OVERVOLTAGEDIRECTIVE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct OvervoltageDirective : public Node {
	using Node::Node;

	constexpr OvervoltageDirective(Node base) : Node{base} {}
	constexpr OvervoltageDirective(uint64_t addr) : Node{addr} {}
	constexpr OvervoltageDirective(Object obj) : OvervoltageDirective{obj.address()} {}
	OvervoltageDirective(Variant variant) : OvervoltageDirective{variant.as_object().address()} {}


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

	inline String get_proposal_name();
	inline String get_lore();
	inline void apply_mod();
	inline void activate_local_effects();
	inline String get_description();
	inline Variant test_adhoc_requirements();
	inline void submit_and_apply();
	inline void update_state();
};

#include "PropMod.hpp"

inline String OvervoltageDirective::get_proposal_name() { return operator()("get_proposal_name"); }
inline String OvervoltageDirective::get_lore() { return operator()("get_lore"); }
inline void OvervoltageDirective::apply_mod() { voidcall("apply_mod"); }
inline void OvervoltageDirective::activate_local_effects() { voidcall("activate_local_effects"); }
inline String OvervoltageDirective::get_description() { return operator()("get_description"); }
inline Variant OvervoltageDirective::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void OvervoltageDirective::submit_and_apply() { voidcall("submit_and_apply"); }
inline void OvervoltageDirective::update_state() { voidcall("update_state"); }

#endif
