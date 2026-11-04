#ifndef TNI_API_HEADER_CABLEPROBEPROBECLOCK
#define TNI_API_HEADER_CABLEPROBEPROBECLOCK
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableProbeProbeClock : public Node {
	using Node::Node;

	constexpr CableProbeProbeClock(Node base) : Node{base} {}
	constexpr CableProbeProbeClock(uint64_t addr) : Node{addr} {}
	constexpr CableProbeProbeClock(Object obj) : CableProbeProbeClock{obj.address()} {}
	CableProbeProbeClock(Variant variant) : CableProbeProbeClock{variant.as_object().address()} {}

	static constexpr int64_t PMIN = -2147483648;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t PMAX = 2147483647;  // NOTE: You should recompile your mod if this value changes!
	// Inner class Hook exposed as CableProbeProbeClockHook

	PROPERTY(recording, bool);
	PROPERTY(frame_us, PackedArray<int64_t>);
	PROPERTY(proc_us, PackedArray<int64_t>);
	PROPERTY(tail_us, PackedArray<int64_t>);
	PROPERTY(ticks, PackedArray<int64_t>);
	PROPERTY(phys_us, PackedArray<int64_t>);
	PROPERTY(step_us, PackedArray<int64_t>);
	PROPERTY(draw_calls, PackedArray<int64_t>);

	inline void clear();
	inline Variant measure(double seconds);
	inline Variant summarize(double wall_s, PackedArray<double> perf_proc, PackedArray<double> perf_phys);
	inline Variant raw_rows();
};


inline void CableProbeProbeClock::clear() { this->voidcall("clear"); }
inline Variant CableProbeProbeClock::measure(double seconds) { return this->operator()("measure", seconds); }
inline Variant CableProbeProbeClock::summarize(double wall_s, PackedArray<double> perf_proc, PackedArray<double> perf_phys) { return this->operator()("summarize", wall_s, perf_proc, perf_phys); }
inline Variant CableProbeProbeClock::raw_rows() { return this->operator()("raw_rows"); }

#endif
