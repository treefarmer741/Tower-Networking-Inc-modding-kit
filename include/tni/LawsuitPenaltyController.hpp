#ifndef TNI_API_HEADER_LAWSUITPENALTYCONTROLLER
#define TNI_API_HEADER_LAWSUITPENALTYCONTROLLER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct LawsuitPenaltyController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr LawsuitPenaltyController(RandomEvent base) : RandomEvent{base} {}
	constexpr LawsuitPenaltyController(uint64_t addr) : RandomEvent{addr} {}
	constexpr LawsuitPenaltyController(Object obj) : LawsuitPenaltyController{obj.address()} {}
	LawsuitPenaltyController(Variant variant) : LawsuitPenaltyController{variant.as_object().address()} {}


	PROPERTY(lawsuit_max_decrease, int64_t);
	PROPERTY(lawsuit_min_day, int64_t);
	PROPERTY(lawsuit_max_day, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void start();
	inline void pause();
};


inline void LawsuitPenaltyController::start() { this->voidcall("start"); }
inline void LawsuitPenaltyController::pause() { this->voidcall("pause"); }

#endif
