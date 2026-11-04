#ifndef TNI_API_HEADER_S1IDLEPLUGGED
#define TNI_API_HEADER_S1IDLEPLUGGED
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S1IdlePlugged : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S1IdlePlugged(RefCounted base) : RefCounted{base} {}
	constexpr S1IdlePlugged(uint64_t addr) : RefCounted{addr} {}
	constexpr S1IdlePlugged(Object obj) : S1IdlePlugged{obj.address()} {}
	S1IdlePlugged(Variant variant) : S1IdlePlugged{variant.as_object().address()} {}

	PROPERTY(PALETTE, Variant);  // Const value type was not supported.

	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S1IdlePlugged::run() { this->voidcall("run"); }
inline Variant S1IdlePlugged::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
