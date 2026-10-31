#ifndef TNI_API_HEADER_S12SAVEROUNDTRIP
#define TNI_API_HEADER_S12SAVEROUNDTRIP
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S12SaveRoundtrip : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S12SaveRoundtrip(RefCounted base) : RefCounted{base} {}
	constexpr S12SaveRoundtrip(uint64_t addr) : RefCounted{addr} {}
	constexpr S12SaveRoundtrip(Object obj) : S12SaveRoundtrip{obj.address()} {}
	S12SaveRoundtrip(Variant variant) : S12SaveRoundtrip{variant.as_object().address()} {}

	// Inner class ProbeRigScript exposed as S12SaveRoundtripProbeRigScript
	// Inner class ProbeCensusScript exposed as S12SaveRoundtripProbeCensusScript
	// Inner class VerletRopeScript exposed as S12SaveRoundtripVerletRopeScript
	inline static const String SAVE_NAME = "probe_cables/roundtrip";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SAVE_NAME_REAL = "probe_cables/roundtrip_real";  // NOTE: You should recompile your mod if this value changes!
	inline static const String SHAPES_FILE = "roundtrip_shapes.json";  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t RESAMPLE = 32;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S12SaveRoundtrip::run() { this->voidcall("run"); }
inline Variant S12SaveRoundtrip::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
