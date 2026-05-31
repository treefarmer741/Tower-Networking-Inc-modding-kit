#ifndef TNI_API_HEADER_WORMSPAWNCONTROLLER
#define TNI_API_HEADER_WORMSPAWNCONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct WormSpawnController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr WormSpawnController(RandomEvent base) : RandomEvent{base} {}
	constexpr WormSpawnController(uint64_t addr) : RandomEvent{addr} {}
	constexpr WormSpawnController(Object obj) : WormSpawnController{obj.address()} {}
	WormSpawnController(Variant variant) : WormSpawnController{variant.as_object().address()} {}


	PROPERTY(min_warn_seconds, int64_t);
	PROPERTY(max_warn_seconds, int64_t);
	PROPERTY(min_hunt_seconds, int64_t);
	PROPERTY(max_hunt_seconds, int64_t);
	PROPERTY(hint_difficulty, int64_t);
	PROPERTY(worm_zoo_ps, Variant);
	PROPERTY(worm_zoo, Variant);
	PROPERTY(modps, PackedScene);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void notify_worm_threat(const WormBase& worm, Variant locs, int64_t start_ts, int64_t _end_ts);
	inline void start();
	inline void pause();
};

#include "WormBase.hpp"

inline void WormSpawnController::notify_worm_threat(const WormBase& worm, Variant locs, int64_t start_ts, int64_t _end_ts) { this->voidcall("notify_worm_threat", Object(reinterpret_cast<const Object*>(&worm)->address()), locs, start_ts, _end_ts); }
inline void WormSpawnController::start() { this->voidcall("start"); }
inline void WormSpawnController::pause() { this->voidcall("pause"); }

#endif
