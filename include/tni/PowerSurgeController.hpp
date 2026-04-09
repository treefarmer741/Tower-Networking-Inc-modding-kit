#ifndef TNI_API_HEADER_POWERSURGECONTROLLER
#define TNI_API_HEADER_POWERSURGECONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct PowerSurgeController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr PowerSurgeController(RandomEvent base) : RandomEvent{base} {}
	constexpr PowerSurgeController(uint64_t addr) : RandomEvent{addr} {}
	constexpr PowerSurgeController(Object obj) : PowerSurgeController{obj.address()} {}
	PowerSurgeController(Variant variant) : PowerSurgeController{variant.as_object().address()} {}


	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(min_surge_seconds, int64_t);
	PROPERTY(max_surge_seconds, int64_t);
	PROPERTY(modps, PackedScene);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void notify_surge_warning(const Location& loc, int64_t start_ts, int64_t end_ts);
	inline void start();
	inline void pause();
};

#include "Location.hpp"

inline void PowerSurgeController::notify_surge_warning(const Location& loc, int64_t start_ts, int64_t end_ts) { this->voidcall("notify_surge_warning", Object(reinterpret_cast<const Object*>(&loc)->address()), start_ts, end_ts); }
inline void PowerSurgeController::start() { this->voidcall("start"); }
inline void PowerSurgeController::pause() { this->voidcall("pause"); }

#endif
