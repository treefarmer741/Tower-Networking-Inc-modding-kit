#ifndef TNI_API_HEADER_BANDWIDTHSPIKECONTROLLER
#define TNI_API_HEADER_BANDWIDTHSPIKECONTROLLER
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct BandwidthSpikeController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr BandwidthSpikeController(RandomEvent base) : RandomEvent{base} {}
	constexpr BandwidthSpikeController(uint64_t addr) : RandomEvent{addr} {}
	constexpr BandwidthSpikeController(Object obj) : BandwidthSpikeController{obj.address()} {}
	BandwidthSpikeController(Variant variant) : BandwidthSpikeController{variant.as_object().address()} {}


	PROPERTY(event_name, String);
	PROPERTY(warning_message_template, String);
	PROPERTY(target_user_scenes, Variant);
	PROPERTY(spike_min_multiplier, double);
	PROPERTY(spike_max_multiplier, double);
	PROPERTY(spike_min_hours, int64_t);
	PROPERTY(spike_max_hours, int64_t);
	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(trigger_time_start, double);
	PROPERTY(trigger_time_end, double);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void start();
	inline void pause();
};


inline void BandwidthSpikeController::start() { this->voidcall("start"); }
inline void BandwidthSpikeController::pause() { this->voidcall("pause"); }

#endif
