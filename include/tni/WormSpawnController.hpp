#ifndef TNI_API_HEADER_WORMSPAWNCONTROLLER
#define TNI_API_HEADER_WORMSPAWNCONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WormSpawnController : public Node {
	using Node::Node;

	constexpr WormSpawnController(Node base) : Node{base} {}
	constexpr WormSpawnController(uint64_t addr) : Node{addr} {}
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

	inline void notify_worm_threat(WormBase worm, Variant locs, int64_t start_ts, int64_t _end_ts);
	inline void start();
	inline void pause();
};

#include "WormBase.hpp"

inline void WormSpawnController::notify_worm_threat(WormBase worm, Variant locs, int64_t start_ts, int64_t _end_ts) { voidcall("notify_worm_threat", worm, locs, start_ts, _end_ts); }
inline void WormSpawnController::start() { voidcall("start"); }
inline void WormSpawnController::pause() { voidcall("pause"); }

#endif
