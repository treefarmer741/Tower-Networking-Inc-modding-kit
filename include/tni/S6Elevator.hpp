#ifndef TNI_API_HEADER_S6ELEVATOR
#define TNI_API_HEADER_S6ELEVATOR
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S6Elevator : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S6Elevator(RefCounted base) : RefCounted{base} {}
	constexpr S6Elevator(uint64_t addr) : RefCounted{addr} {}
	constexpr S6Elevator(Object obj) : S6Elevator{obj.address()} {}
	S6Elevator(Variant variant) : S6Elevator{variant.as_object().address()} {}

	static constexpr double TRIP_S = 6.0;  // NOTE: You should recompile your mod if this value changes!
	// Inner class ProbeRigScript exposed as S6ElevatorProbeRigScript
	// Inner class ProbeCensusScript exposed as S6ElevatorProbeCensusScript
	// Inner class VerletRopeScript exposed as S6ElevatorVerletRopeScript

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S6Elevator::run() { this->voidcall("run"); }
inline Variant S6Elevator::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
