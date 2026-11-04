#ifndef TNI_API_HEADER_PROBECLOCK
#define TNI_API_HEADER_PROBECLOCK
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ProbeClock : public Node {
	using Node::Node;

	constexpr ProbeClock(Node base) : Node{base} {}
	constexpr ProbeClock(uint64_t addr) : Node{addr} {}
	constexpr ProbeClock(Object obj) : ProbeClock{obj.address()} {}
	ProbeClock(Variant variant) : ProbeClock{variant.as_object().address()} {}

	static constexpr int64_t PMIN = -2147483648;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t PMAX = 2147483647;  // NOTE: You should recompile your mod if this value changes!
	// Inner class Hook exposed as ProbeClockHook

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


inline void ProbeClock::clear() { this->voidcall("clear"); }
inline Variant ProbeClock::measure(double seconds) { return this->operator()("measure", seconds); }
inline Variant ProbeClock::summarize(double wall_s, PackedArray<double> perf_proc, PackedArray<double> perf_phys) { return this->operator()("summarize", wall_s, perf_proc, perf_phys); }
inline Variant ProbeClock::raw_rows() { return this->operator()("raw_rows"); }

#endif
