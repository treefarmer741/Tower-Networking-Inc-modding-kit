#ifndef TNI_API_HEADER_DEVICEFAILURECONTROLLER
#define TNI_API_HEADER_DEVICEFAILURECONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "RandomEvent.hpp"

struct DeviceFailureController : public RandomEvent {
	using RandomEvent::RandomEvent;

	constexpr DeviceFailureController(RandomEvent base) : RandomEvent{base} {}
	constexpr DeviceFailureController(uint64_t addr) : RandomEvent{addr} {}
	constexpr DeviceFailureController(Object obj) : DeviceFailureController{obj.address()} {}
	DeviceFailureController(Variant variant) : DeviceFailureController{variant.as_object().address()} {}


	PROPERTY(max_concurrent_fails, int64_t);
	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void try_fail_device(const DeviceUnit& dev);
	inline void start();
	inline void pause();
};

#include "DeviceUnit.hpp"

inline void DeviceFailureController::try_fail_device(const DeviceUnit& dev) { this->voidcall("try_fail_device", Object(reinterpret_cast<const Object*>(&dev)->address())); }
inline void DeviceFailureController::start() { this->voidcall("start"); }
inline void DeviceFailureController::pause() { this->voidcall("pause"); }

#endif
