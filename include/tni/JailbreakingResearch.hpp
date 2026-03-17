#ifndef TNI_API_HEADER_JAILBREAKINGRESEARCH
#define TNI_API_HEADER_JAILBREAKINGRESEARCH
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct JailbreakingResearch : public Node {
	using Node::Node;

	constexpr JailbreakingResearch(Node base) : Node{base} {}
	constexpr JailbreakingResearch(uint64_t addr) : Node{addr} {}
	constexpr JailbreakingResearch(Object obj) : JailbreakingResearch{obj.address()} {}
	JailbreakingResearch(Variant variant) : JailbreakingResearch{variant.as_object().address()} {}

	inline static const String techv = "remote_force_installer";  // NOTE: You should recompile your mod if this value changes!

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

inline void JailbreakingResearch::apply_mod() { voidcall("apply_mod"); }
inline void JailbreakingResearch::activate_local_effects() { voidcall("activate_local_effects"); }
inline String JailbreakingResearch::get_proposal_name() { return operator()("get_proposal_name"); }
inline String JailbreakingResearch::get_lore() { return operator()("get_lore"); }
inline String JailbreakingResearch::get_description() { return operator()("get_description"); }
inline Variant JailbreakingResearch::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void JailbreakingResearch::submit_and_apply() { voidcall("submit_and_apply"); }
inline void JailbreakingResearch::update_state() { voidcall("update_state"); }

#endif
