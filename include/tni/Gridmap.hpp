#ifndef TNI_API_HEADER_GRIDMAP
#define TNI_API_HEADER_GRIDMAP
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Gridmap : public GridMap {
	using GridMap::GridMap;

	constexpr Gridmap(GridMap base) : GridMap{base} {}
	constexpr Gridmap(uint64_t addr) : GridMap{addr} {}
	constexpr Gridmap(Object obj) : Gridmap{obj.address()} {}
	Gridmap(Variant variant) : Gridmap{variant.as_object().address()} {}

	enum ConstraintDirection : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		POS_Z = 0,
		POS_X = 1,
		NEG_Z = 2,
		NEG_X = 3,
	};
	PROPERTY(DIRECTIONS_V, Variant);  // Const value type was not supported.
	PROPERTY(OPPOSITE_DIR, Variant);  // Const value type was not supported.

	PROPERTY(plane_size, Variant);
	PROPERTY(tile_ids, PackedArray<int32_t>);

	inline void generate(Variant constraints, RandomNumberGenerator rng);
};


inline void Gridmap::generate(Variant constraints, RandomNumberGenerator rng) { voidcall("generate", constraints, rng); }

#endif
