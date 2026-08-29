#ifndef TNI_API_HEADER_USEROVERNIGHTCONTROLLER
#define TNI_API_HEADER_USEROVERNIGHTCONTROLLER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct UserOvernightController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr UserOvernightController(RandomEvent base) : RandomEvent{base} {}
	constexpr UserOvernightController(uint64_t addr) : RandomEvent{addr} {}
	constexpr UserOvernightController(Object obj) : UserOvernightController{obj.address()} {}
	UserOvernightController(Variant variant) : UserOvernightController{variant.as_object().address()} {}

	static constexpr double OVERNIGHT_START = 0.75;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double OVERNIGHT_END = 0.375;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(scheduled_ot_rate, double);
	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(ot_min_hours, int64_t);
	PROPERTY(ot_max_hours, int64_t);
	PROPERTY(min_ot_staff, int64_t);
	PROPERTY(max_ot_staff, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void start();
	inline void pause();
};


inline void UserOvernightController::start() { this->voidcall("start"); }
inline void UserOvernightController::pause() { this->voidcall("pause"); }

#endif
