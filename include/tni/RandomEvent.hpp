#ifndef TNI_API_HEADER_RANDOMEVENT
#define TNI_API_HEADER_RANDOMEVENT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RandomEvent : public Node {
	using Node::Node;

	constexpr RandomEvent(Node base) : Node{base} {}
	constexpr RandomEvent(uint64_t addr) : Node{addr} {}
	constexpr RandomEvent(Object obj) : RandomEvent{obj.address()} {}
	RandomEvent(Variant variant) : RandomEvent{variant.as_object().address()} {}

	static constexpr double ABS_MIN_RATE = 0.001;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(min_trial_period_seconds, double);
	PROPERTY(max_trial_period_seconds, double);
	PROPERTY(occurence_rate, double);
	PROPERTY(enabled, bool);
	PROPERTY(trial_timer, Timer);

	inline void start();
	inline void pause();
};


inline void RandomEvent::start() { voidcall("start"); }
inline void RandomEvent::pause() { voidcall("pause"); }

#endif
