#ifndef TNI_API_HEADER_DEBUG
#define TNI_API_HEADER_DEBUG
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Debug : public Node {
	using Node::Node;

	constexpr Debug(Node base) : Node{base} {}
	constexpr Debug(uint64_t addr) : Node{addr} {}
	constexpr Debug(Object obj) : Debug{obj.address()} {}
	Debug(Variant variant) : Debug{variant.as_object().address()} {}


	PROPERTY(batch_day_interval, int64_t);
	PROPERTY(proposals_per_batch, int64_t);
	PROPERTY(reroll_fee, int64_t);
	PROPERTY(initial_lock, PropMod);
	PROPERTY(mods, Variant);
	PROPERTY(current_proposal_count, int64_t);
	PROPERTY(history_proposal_count, int64_t);
	PROPERTY(locked_proposal_count, int64_t);

	inline void new_proposals_updated();
	inline void ex_proposals_updated();
	inline void reroll_proposals();
	inline void submit(Variant mod_path);
	inline void lock(Variant mod_path);
};

#include "PropMod.hpp"

inline void Debug::new_proposals_updated() { voidcall("new_proposals_updated"); }
inline void Debug::ex_proposals_updated() { voidcall("ex_proposals_updated"); }
inline void Debug::reroll_proposals() { voidcall("reroll_proposals"); }
inline void Debug::submit(Variant mod_path) { voidcall("submit", mod_path); }
inline void Debug::lock(Variant mod_path) { voidcall("lock", mod_path); }

#endif
