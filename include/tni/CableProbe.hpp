#ifndef TNI_API_HEADER_CABLEPROBE
#define TNI_API_HEADER_CABLEPROBE
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CableProbe : public Node {
	using Node::Node;

	constexpr CableProbe(Node base) : Node{base} {}
	constexpr CableProbe(uint64_t addr) : Node{addr} {}
	constexpr CableProbe(Object obj) : CableProbe{obj.address()} {}
	CableProbe(Variant variant) : CableProbe{variant.as_object().address()} {}

//	// Inner class ProbeClock exposed as CableProbeProbeClock
//	// Inner class ProbeCensus exposed as CableProbeProbeCensus
//	// Inner class ProbeRig exposed as CableProbeProbeRig
	PROPERTY(SCENARIOS, Dictionary);  // enum of non-integer type
	// Inner class Ticker exposed as CableProbeTicker

	PROPERTY(args, Variant);
	PROPERTY(world, GameWorld);
	PROPERTY(clock, Node);
	PROPERTY(census, RefCounted);
	PROPERTY(rig, RefCounted);
	PROPERTY(out_dir, String);
	PROPERTY(load_s, double);
	PROPERTY(first_frame, Variant);
	PROPERTY(bare, bool);

	inline void wait(double seconds);
	inline void wait_frames(int64_t n);
	inline Variant settle(double timeout);
	inline Variant measure_point(Variant fields, double seconds);
	inline Node start_ticker(Variant fn);
	inline Variant record_transient(Variant fields, double seconds);
	inline void measure_physics_attribution(Variant fields);
	inline void screenshot(String shot_name);
	inline void write_row(Variant row);
	inline bool too_slow(Variant row);
	inline void unlock_frame_rate();
	inline double arg_float(String key, double default_);
	inline int64_t arg_int(String key, int64_t default_);
	inline Variant int_list(String key, Variant default_);
};

#include "GameWorld.hpp"

inline void CableProbe::wait(double seconds) { this->voidcall("wait", seconds); }
inline void CableProbe::wait_frames(int64_t n) { this->voidcall("wait_frames", n); }
inline Variant CableProbe::settle(double timeout) { return this->operator()("settle", timeout); }
inline Variant CableProbe::measure_point(Variant fields, double seconds) { return this->operator()("measure_point", fields, seconds); }
inline Node CableProbe::start_ticker(Variant fn) { return Node(this->operator()("start_ticker", fn).as_object().address()); }
inline Variant CableProbe::record_transient(Variant fields, double seconds) { return this->operator()("record_transient", fields, seconds); }
inline void CableProbe::measure_physics_attribution(Variant fields) { this->voidcall("measure_physics_attribution", fields); }
inline void CableProbe::screenshot(String shot_name) { this->voidcall("screenshot", shot_name); }
inline void CableProbe::write_row(Variant row) { this->voidcall("write_row", row); }
inline bool CableProbe::too_slow(Variant row) { return this->operator()("too_slow", row); }
inline void CableProbe::unlock_frame_rate() { this->voidcall("unlock_frame_rate"); }
inline double CableProbe::arg_float(String key, double default_) { return this->operator()("arg_float", key, default_); }
inline int64_t CableProbe::arg_int(String key, int64_t default_) { return this->operator()("arg_int", key, default_); }
inline Variant CableProbe::int_list(String key, Variant default_) { return this->operator()("int_list", key, default_); }

#endif
