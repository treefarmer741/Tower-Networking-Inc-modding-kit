#ifndef TNI_API_HEADER_POWERSURGECONTROLLER
#define TNI_API_HEADER_POWERSURGECONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PowerSurgeController : public Node {
	using Node::Node;

	constexpr PowerSurgeController(Node base) : Node{base} {}
	constexpr PowerSurgeController(uint64_t addr) : Node{addr} {}
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

	inline void notify_surge_warning(Location loc, int64_t start_ts, int64_t end_ts);
	inline void start();
	inline void pause();
};

#include "Location.hpp"

inline void PowerSurgeController::notify_surge_warning(Location loc, int64_t start_ts, int64_t end_ts) { voidcall("notify_surge_warning", loc, start_ts, end_ts); }
inline void PowerSurgeController::start() { voidcall("start"); }
inline void PowerSurgeController::pause() { voidcall("pause"); }

#endif
