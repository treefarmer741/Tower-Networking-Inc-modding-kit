#ifndef TNI_API_HEADER_POWEROUTAGECONTROLLER
#define TNI_API_HEADER_POWEROUTAGECONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct PowerOutageController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr PowerOutageController(RandomEvent base) : RandomEvent{base} {}
	constexpr PowerOutageController(uint64_t addr) : RandomEvent{addr} {}
	constexpr PowerOutageController(Object obj) : PowerOutageController{obj.address()} {}
	PowerOutageController(Variant variant) : PowerOutageController{variant.as_object().address()} {}


	PROPERTY(scheduled_outage_rate, double);
	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(min_outage_seconds, int64_t);
	PROPERTY(max_outage_seconds, int64_t);
	PROPERTY(modps, PackedScene);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void setup_outage_mod(Variant start_ts, Variant end_ts, Variant loc, bool scheduled);
	inline void notify_unscheduled_outage(const Location& loc, int64_t end_ts);
	inline void notify_scheduled_outage(const Location& loc, int64_t start_ts, int64_t end_ts);
	inline void start();
	inline void pause();
};

#include "Location.hpp"

inline void PowerOutageController::setup_outage_mod(Variant start_ts, Variant end_ts, Variant loc, bool scheduled) { this->voidcall("setup_outage_mod", start_ts, end_ts, loc, scheduled); }
inline void PowerOutageController::notify_unscheduled_outage(const Location& loc, int64_t end_ts) { this->voidcall("notify_unscheduled_outage", Object(reinterpret_cast<const Object*>(&loc)->address()), end_ts); }
inline void PowerOutageController::notify_scheduled_outage(const Location& loc, int64_t start_ts, int64_t end_ts) { this->voidcall("notify_scheduled_outage", Object(reinterpret_cast<const Object*>(&loc)->address()), start_ts, end_ts); }
inline void PowerOutageController::start() { this->voidcall("start"); }
inline void PowerOutageController::pause() { this->voidcall("pause"); }

#endif
