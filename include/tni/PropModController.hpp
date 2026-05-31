#ifndef TNI_API_HEADER_PROPMODCONTROLLER
#define TNI_API_HEADER_PROPMODCONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PropModController : public Node {
	using Node::Node;

	constexpr PropModController(Node base) : Node{base} {}
	constexpr PropModController(uint64_t addr) : Node{addr} {}
	constexpr PropModController(Object obj) : PropModController{obj.address()} {}
	PropModController(Variant variant) : PropModController{variant.as_object().address()} {}


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

inline void PropModController::new_proposals_updated() { this->voidcall("new_proposals_updated"); }
inline void PropModController::ex_proposals_updated() { this->voidcall("ex_proposals_updated"); }
inline void PropModController::reroll_proposals() { this->voidcall("reroll_proposals"); }
inline void PropModController::submit(Variant mod_path) { this->voidcall("submit", mod_path); }
inline void PropModController::lock(Variant mod_path) { this->voidcall("lock", mod_path); }

#endif
