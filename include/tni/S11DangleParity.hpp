#ifndef TNI_API_HEADER_S11DANGLEPARITY
#define TNI_API_HEADER_S11DANGLEPARITY
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S11DangleParity : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S11DangleParity(RefCounted base) : RefCounted{base} {}
	constexpr S11DangleParity(uint64_t addr) : RefCounted{addr} {}
	constexpr S11DangleParity(Object obj) : S11DangleParity{obj.address()} {}
	S11DangleParity(Variant variant) : S11DangleParity{variant.as_object().address()} {}

	// Inner class ProbeRigScript exposed as S11DangleParityProbeRigScript

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S11DangleParity::run() { this->voidcall("run"); }
inline Variant S11DangleParity::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
