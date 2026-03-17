#ifndef TNI_API_HEADER_STANDARD
#define TNI_API_HEADER_STANDARD
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Standard : public Node {
	using Node::Node;

	constexpr Standard(Node base) : Node{base} {}
	constexpr Standard(uint64_t addr) : Node{addr} {}
	constexpr Standard(Object obj) : Standard{obj.address()} {}
	Standard(Variant variant) : Standard{variant.as_object().address()} {}


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

inline void Standard::new_proposals_updated() { voidcall("new_proposals_updated"); }
inline void Standard::ex_proposals_updated() { voidcall("ex_proposals_updated"); }
inline void Standard::reroll_proposals() { voidcall("reroll_proposals"); }
inline void Standard::submit(Variant mod_path) { voidcall("submit", mod_path); }
inline void Standard::lock(Variant mod_path) { voidcall("lock", mod_path); }

#endif
