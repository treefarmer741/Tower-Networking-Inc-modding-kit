#ifndef TNI_API_HEADER_S10YANKPARITY
#define TNI_API_HEADER_S10YANKPARITY
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S10YankParity : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S10YankParity(RefCounted base) : RefCounted{base} {}
	constexpr S10YankParity(uint64_t addr) : RefCounted{addr} {}
	constexpr S10YankParity(Object obj) : S10YankParity{obj.address()} {}
	S10YankParity(Variant variant) : S10YankParity{variant.as_object().address()} {}

	// Inner class ProbeRigScript exposed as S10YankParityProbeRigScript

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S10YankParity::run() { this->voidcall("run"); }
inline Variant S10YankParity::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
