#ifndef TNI_API_HEADER_HARESEARCH
#define TNI_API_HEADER_HARESEARCH
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct HaResearch : public Node {
	using Node::Node;

	constexpr HaResearch(Node base) : Node{base} {}
	constexpr HaResearch(uint64_t addr) : Node{addr} {}
	constexpr HaResearch(Object obj) : HaResearch{obj.address()} {}
	HaResearch(Variant variant) : HaResearch{variant.as_object().address()} {}

	inline static const String techv = "high_availability_v1";  // NOTE: You should recompile your mod if this value changes!

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
};

#include "PropMod.hpp"

inline void HaResearch::apply_mod() { voidcall("apply_mod"); }
inline void HaResearch::activate_local_effects() { voidcall("activate_local_effects"); }
inline String HaResearch::get_proposal_name() { return operator()("get_proposal_name"); }
inline String HaResearch::get_lore() { return operator()("get_lore"); }
inline String HaResearch::get_description() { return operator()("get_description"); }
inline Variant HaResearch::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void HaResearch::submit_and_apply() { voidcall("submit_and_apply"); }
inline void HaResearch::update_state() { voidcall("update_state"); }

#endif
