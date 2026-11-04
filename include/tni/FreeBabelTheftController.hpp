#ifndef TNI_API_HEADER_FREEBABELTHEFTCONTROLLER
#define TNI_API_HEADER_FREEBABELTHEFTCONTROLLER
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct FreeBabelTheftController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr FreeBabelTheftController(RandomEvent base) : RandomEvent{base} {}
	constexpr FreeBabelTheftController(uint64_t addr) : RandomEvent{addr} {}
	constexpr FreeBabelTheftController(Object obj) : FreeBabelTheftController{obj.address()} {}
	FreeBabelTheftController(Variant variant) : FreeBabelTheftController{variant.as_object().address()} {}


	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(range_size, int64_t);
	PROPERTY(notice_day, int64_t);
	PROPERTY(strike_ts, int64_t);
	PROPERTY(range_first, int64_t);
	PROPERTY(range_last, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void warn_about_floor(int64_t floor_n);
	inline bool steal_from_floor(int64_t floor_n);
	inline Variant get_player_floors();
	inline void start();
	inline void pause();
};


inline void FreeBabelTheftController::warn_about_floor(int64_t floor_n) { this->voidcall("warn_about_floor", floor_n); }
inline bool FreeBabelTheftController::steal_from_floor(int64_t floor_n) { return this->operator()("steal_from_floor", floor_n); }
inline Variant FreeBabelTheftController::get_player_floors() { return this->operator()("get_player_floors"); }
inline void FreeBabelTheftController::start() { this->voidcall("start"); }
inline void FreeBabelTheftController::pause() { this->voidcall("pause"); }

#endif
