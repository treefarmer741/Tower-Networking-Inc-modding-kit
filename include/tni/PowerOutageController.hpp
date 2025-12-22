#ifndef TNI_API_HEADER_POWEROUTAGECONTROLLER
#define TNI_API_HEADER_POWEROUTAGECONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PowerOutageController : public Node {
	using Node::Node;

	constexpr PowerOutageController(Node base) : Node{base} {}
	constexpr PowerOutageController(uint64_t addr) : Node{addr} {}
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
	inline void notify_unscheduled_outage(Location loc, int64_t end_ts);
	inline void notify_scheduled_outage(Location loc, int64_t start_ts, int64_t end_ts);
	inline void start();
	inline void pause();
};

#include "Location.hpp"

inline void PowerOutageController::setup_outage_mod(Variant start_ts, Variant end_ts, Variant loc, bool scheduled) { voidcall("setup_outage_mod", start_ts, end_ts, loc, scheduled); }
inline void PowerOutageController::notify_unscheduled_outage(Location loc, int64_t end_ts) { voidcall("notify_unscheduled_outage", loc, end_ts); }
inline void PowerOutageController::notify_scheduled_outage(Location loc, int64_t start_ts, int64_t end_ts) { voidcall("notify_scheduled_outage", loc, start_ts, end_ts); }
inline void PowerOutageController::start() { voidcall("start"); }
inline void PowerOutageController::pause() { voidcall("pause"); }

#endif
