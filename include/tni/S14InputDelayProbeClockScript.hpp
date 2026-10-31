#ifndef TNI_API_HEADER_S14INPUTDELAYPROBECLOCKSCRIPT
#define TNI_API_HEADER_S14INPUTDELAYPROBECLOCKSCRIPT
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S14InputDelayProbeClockScript : public Node {
	using Node::Node;

	constexpr S14InputDelayProbeClockScript(Node base) : Node{base} {}
	constexpr S14InputDelayProbeClockScript(uint64_t addr) : Node{addr} {}
	constexpr S14InputDelayProbeClockScript(Object obj) : S14InputDelayProbeClockScript{obj.address()} {}
	S14InputDelayProbeClockScript(Variant variant) : S14InputDelayProbeClockScript{variant.as_object().address()} {}

	static constexpr int64_t PMIN = -2147483648;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t PMAX = 2147483647;  // NOTE: You should recompile your mod if this value changes!
	// Inner class Hook exposed as S14InputDelayProbeClockScriptHook

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


inline void S14InputDelayProbeClockScript::clear() { this->voidcall("clear"); }
inline Variant S14InputDelayProbeClockScript::measure(double seconds) { return this->operator()("measure", seconds); }
inline Variant S14InputDelayProbeClockScript::summarize(double wall_s, PackedArray<double> perf_proc, PackedArray<double> perf_phys) { return this->operator()("summarize", wall_s, perf_proc, perf_phys); }
inline Variant S14InputDelayProbeClockScript::raw_rows() { return this->operator()("raw_rows"); }

#endif
