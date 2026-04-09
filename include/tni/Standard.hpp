#ifndef TNI_API_HEADER_STANDARD
#define TNI_API_HEADER_STANDARD
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "PropModController.hpp"

struct Standard : public PropModController {
	using PropModController::PropModController;

	constexpr Standard(PropModController base) : PropModController{base} {}
	constexpr Standard(uint64_t addr) : PropModController{addr} {}
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

inline void Standard::new_proposals_updated() { this->voidcall("new_proposals_updated"); }
inline void Standard::ex_proposals_updated() { this->voidcall("ex_proposals_updated"); }
inline void Standard::reroll_proposals() { this->voidcall("reroll_proposals"); }
inline void Standard::submit(Variant mod_path) { this->voidcall("submit", mod_path); }
inline void Standard::lock(Variant mod_path) { this->voidcall("lock", mod_path); }

#endif
