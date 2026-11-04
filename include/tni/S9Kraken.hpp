#ifndef TNI_API_HEADER_S9KRAKEN
#define TNI_API_HEADER_S9KRAKEN
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S9Kraken : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S9Kraken(RefCounted base) : RefCounted{base} {}
	constexpr S9Kraken(uint64_t addr) : RefCounted{addr} {}
	constexpr S9Kraken(Object obj) : S9Kraken{obj.address()} {}
	S9Kraken(Variant variant) : S9Kraken{variant.as_object().address()} {}

	static constexpr int64_t PER_DEVICE = 24;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t COLUMNS = 8;  // NOTE: You should recompile your mod if this value changes!
	// Inner class ProbeRigScript exposed as S9KrakenProbeRigScript
	// Inner class ProbeCensusScript exposed as S9KrakenProbeCensusScript
	// Inner class VerletRopeScript exposed as S9KrakenVerletRopeScript

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S9Kraken::run() { this->voidcall("run"); }
inline Variant S9Kraken::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
