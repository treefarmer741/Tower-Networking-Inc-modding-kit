#ifndef TNI_API_HEADER_S14INPUTDELAY
#define TNI_API_HEADER_S14INPUTDELAY
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S14InputDelay : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S14InputDelay(RefCounted base) : RefCounted{base} {}
	constexpr S14InputDelay(uint64_t addr) : RefCounted{addr} {}
	constexpr S14InputDelay(Object obj) : S14InputDelay{obj.address()} {}
	S14InputDelay(Variant variant) : S14InputDelay{variant.as_object().address()} {}

	static constexpr double STEP = 150.0;  // NOTE: You should recompile your mod if this value changes!
	// Inner class ProbeClockScript exposed as S14InputDelayProbeClockScript
	// Inner class Hook exposed as S14InputDelayHook

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S14InputDelay::run() { this->voidcall("run"); }
inline Variant S14InputDelay::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
