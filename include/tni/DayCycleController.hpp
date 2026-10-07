#ifndef TNI_API_HEADER_DAYCYCLECONTROLLER
#define TNI_API_HEADER_DAYCYCLECONTROLLER
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DayCycleController : public CanvasModulate {
	using CanvasModulate::CanvasModulate;

	constexpr DayCycleController(CanvasModulate base) : CanvasModulate{base} {}
	constexpr DayCycleController(uint64_t addr) : CanvasModulate{addr} {}
	constexpr DayCycleController(Object obj) : DayCycleController{obj.address()} {}
	DayCycleController(Variant variant) : DayCycleController{variant.as_object().address()} {}

	enum struct LampMode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		DEFAULT = 0,
		OFF = 1,
		ON = 2,
	};
	static constexpr double DEFAULT_DARKNESS = 0.6;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double DEFAULT_TINT_STRENGTH = 0.5;  // NOTE: You should recompile your mod if this value changes!

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
	PROPERTY(dark_mode, bool);
	PROPERTY(lighting_darkness, double);
	PROPERTY(lamp_mode, int64_t);
	PROPERTY(tint_hue, double);
	PROPERTY(tint_strength, double);
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
	inline void set_lighting(bool dark, double darkness, int64_t lamps);
	inline void set_tint(double hue, double strength);
	inline void reset_lighting();
	inline Variant lumen_color(bool dark, double darkness, double hue, double strength);
};


inline void DayCycleController::time_mult_updated(double time_mult_delta) { this->voidcall("time_mult_updated", time_mult_delta); }
inline void DayCycleController::force_day_clock(double new_clk) { this->voidcall("force_day_clock", new_clk); }
inline void DayCycleController::force_normal_clock(double new_clk) { this->voidcall("force_normal_clock", new_clk); }
inline Variant DayCycleController::calculate_day_clock_from_normal_clock(double dayclk) { return this->operator()("calculate_day_clock_from_normal_clock", dayclk); }
inline void DayCycleController::pause_timer() { this->voidcall("pause_timer"); }
inline void DayCycleController::resume_timer() { this->voidcall("resume_timer"); }
inline Variant DayCycleController::debug_monitor_callback() { return this->operator()("debug_monitor_callback"); }
inline void DayCycleController::set_lighting(bool dark, double darkness, int64_t lamps) { this->voidcall("set_lighting", dark, darkness, lamps); }
inline void DayCycleController::set_tint(double hue, double strength) { this->voidcall("set_tint", hue, strength); }
inline void DayCycleController::reset_lighting() { this->voidcall("reset_lighting"); }
inline Variant DayCycleController::lumen_color(bool dark, double darkness, double hue, double strength) { return this->operator()("lumen_color", dark, darkness, hue, strength); }

#endif
