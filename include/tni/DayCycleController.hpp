#ifndef TNI_API_HEADER_DAYCYCLECONTROLLER
#define TNI_API_HEADER_DAYCYCLECONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DayCycleController : public CanvasModulate {
	using CanvasModulate::CanvasModulate;

	constexpr DayCycleController(CanvasModulate base) : CanvasModulate{base} {}
	constexpr DayCycleController(uint64_t addr) : CanvasModulate{addr} {}
	constexpr DayCycleController(Object obj) : DayCycleController{obj.address()} {}
	DayCycleController(Variant variant) : DayCycleController{variant.as_object().address()} {}


	PROPERTY(day_period, int64_t);
	PROPERTY(day_offset, double);
	PROPERTY(modulation_gradient, GradientTexture1D);
	PROPERTY(day_clock, double);
	PROPERTY(sunrise_time_float, double);
	PROPERTY(sunset_time_float, double);
	PROPERTY(main_timer, Timer);
	PROPERTY(sampler, Timer);
	PROPERTY(day_period_float, double);
	PROPERTY(paused, bool);
	PROPERTY(modval, double);
	PROPERTY(sampled_time_str, String);
	PROPERTY(sampled_day_time_float, double);
	PROPERTY(sunrise_happened, bool);
	PROPERTY(sunset_happened, bool);
	PROPERTY(normal_clock, double);

	inline void time_mult_updated(double time_mult_delta);
	inline void force_day_clock(double new_clk);
	inline void force_normal_clock(double new_clk);
	inline Variant calculate_day_clock_from_normal_clock(double dayclk);
	inline void pause_timer();
	inline void resume_timer();
	inline Variant debug_monitor_callback();
};


inline void DayCycleController::time_mult_updated(double time_mult_delta) { voidcall("time_mult_updated", time_mult_delta); }
inline void DayCycleController::force_day_clock(double new_clk) { voidcall("force_day_clock", new_clk); }
inline void DayCycleController::force_normal_clock(double new_clk) { voidcall("force_normal_clock", new_clk); }
inline Variant DayCycleController::calculate_day_clock_from_normal_clock(double dayclk) { return operator()("calculate_day_clock_from_normal_clock", dayclk); }
inline void DayCycleController::pause_timer() { voidcall("pause_timer"); }
inline void DayCycleController::resume_timer() { voidcall("resume_timer"); }
inline Variant DayCycleController::debug_monitor_callback() { return operator()("debug_monitor_callback"); }

#endif
