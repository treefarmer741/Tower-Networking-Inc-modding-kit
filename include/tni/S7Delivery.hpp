#ifndef TNI_API_HEADER_S7DELIVERY
#define TNI_API_HEADER_S7DELIVERY
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S7Delivery : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S7Delivery(RefCounted base) : RefCounted{base} {}
	constexpr S7Delivery(uint64_t addr) : RefCounted{addr} {}
	constexpr S7Delivery(Object obj) : S7Delivery{obj.address()} {}
	S7Delivery(Variant variant) : S7Delivery{variant.as_object().address()} {}


	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S7Delivery::run() { this->voidcall("run"); }
inline Variant S7Delivery::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
