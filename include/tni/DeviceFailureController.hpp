#ifndef TNI_API_HEADER_DEVICEFAILURECONTROLLER
#define TNI_API_HEADER_DEVICEFAILURECONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DeviceFailureController : public Node {
	using Node::Node;

	constexpr DeviceFailureController(Node base) : Node{base} {}
	constexpr DeviceFailureController(uint64_t addr) : Node{addr} {}
	constexpr DeviceFailureController(Object obj) : DeviceFailureController{obj.address()} {}
	DeviceFailureController(Variant variant) : DeviceFailureController{variant.as_object().address()} {}


	PROPERTY(max_concurrent_fails, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void start();
	inline void pause();
};


inline void DeviceFailureController::start() { voidcall("start"); }
inline void DeviceFailureController::pause() { voidcall("pause"); }

#endif
