#ifndef TNI_API_HEADER_S5DRAGDEVICE
#define TNI_API_HEADER_S5DRAGDEVICE
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S5DragDevice : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S5DragDevice(RefCounted base) : RefCounted{base} {}
	constexpr S5DragDevice(uint64_t addr) : RefCounted{addr} {}
	constexpr S5DragDevice(Object obj) : S5DragDevice{obj.address()} {}
	S5DragDevice(Variant variant) : S5DragDevice{variant.as_object().address()} {}

	static constexpr double SWING = 250.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr double PERIOD = 3.0;  // NOTE: You should recompile your mod if this value changes!
	// Inner class ProbeRigScript exposed as S5DragDeviceProbeRigScript
	// Inner class ProbeCensusScript exposed as S5DragDeviceProbeCensusScript

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S5DragDevice::run() { this->voidcall("run"); }
inline Variant S5DragDevice::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
