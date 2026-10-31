#ifndef TNI_API_HEADER_S8SAVELOAD
#define TNI_API_HEADER_S8SAVELOAD
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct S8SaveLoad : public RefCounted {
	using RefCounted::RefCounted;

	constexpr S8SaveLoad(RefCounted base) : RefCounted{base} {}
	constexpr S8SaveLoad(uint64_t addr) : RefCounted{addr} {}
	constexpr S8SaveLoad(Object obj) : S8SaveLoad{obj.address()} {}
	S8SaveLoad(Variant variant) : S8SaveLoad{variant.as_object().address()} {}


	PROPERTY(probe, Node);

	inline void run();
	inline Variant socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx);
};


inline void S8SaveLoad::run() { this->voidcall("run"); }
inline Variant S8SaveLoad::socket_pair_positions(int64_t from, int64_t to, double span, int64_t loc_idx) { return this->operator()("socket_pair_positions", from, to, span, loc_idx); }

#endif
