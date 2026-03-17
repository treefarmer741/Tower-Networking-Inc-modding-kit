#ifndef TNI_API_HEADER_LOGICPROGRAMUNLOCK
#define TNI_API_HEADER_LOGICPROGRAMUNLOCK
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LogicProgramUnlock : public Node {
	using Node::Node;

	constexpr LogicProgramUnlock(Node base) : Node{base} {}
	constexpr LogicProgramUnlock(uint64_t addr) : Node{addr} {}
	constexpr LogicProgramUnlock(Object obj) : LogicProgramUnlock{obj.address()} {}
	LogicProgramUnlock(Variant variant) : LogicProgramUnlock{variant.as_object().address()} {}


	PROPERTY(title, String);
	PROPERTY(dialog_text, String);
	PROPERTY(cost, int64_t);
	PROPERTY(logic_program_scn, PackedScene);
	PROPERTY(lprog, Program);
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

#include "Program.hpp"
#include "PropMod.hpp"

inline void LogicProgramUnlock::apply_mod() { voidcall("apply_mod"); }
inline void LogicProgramUnlock::activate_local_effects() { voidcall("activate_local_effects"); }
inline String LogicProgramUnlock::get_proposal_name() { return operator()("get_proposal_name"); }
inline String LogicProgramUnlock::get_lore() { return operator()("get_lore"); }
inline String LogicProgramUnlock::get_description() { return operator()("get_description"); }
inline Variant LogicProgramUnlock::test_adhoc_requirements() { return operator()("test_adhoc_requirements"); }
inline void LogicProgramUnlock::submit_and_apply() { voidcall("submit_and_apply"); }
inline void LogicProgramUnlock::update_state() { voidcall("update_state"); }

#endif
