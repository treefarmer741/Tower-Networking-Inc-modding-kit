#ifndef TNI_API_HEADER_S2FLOORLOOSE
#define TNI_API_HEADER_S2FLOORLOOSE
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S2FloorLoose : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S2FloorLoose(RefCounted base) : RefCounted{base} {}
	constexpr S2FloorLoose(uint64_t addr) : RefCounted{addr} {}
	constexpr S2FloorLoose(Object obj) : S2FloorLoose{obj.address()} {}
	S2FloorLoose(Variant variant) : S2FloorLoose{variant.as_object().address()} {}


	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S2FloorLoose::run() { this->voidcall("run"); }
inline Variant S2FloorLoose::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
