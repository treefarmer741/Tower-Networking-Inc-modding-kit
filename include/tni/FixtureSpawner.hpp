#ifndef TNI_API_HEADER_FIXTURESPAWNER
#define TNI_API_HEADER_FIXTURESPAWNER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FixtureSpawner : public Node2D {
	using Node2D::Node2D;

	constexpr FixtureSpawner(Node2D base) : Node2D{base} {}
	constexpr FixtureSpawner(uint64_t addr) : Node2D{addr} {}
	constexpr FixtureSpawner(Object obj) : FixtureSpawner{obj.address()} {}
	FixtureSpawner(Variant variant) : FixtureSpawner{variant.as_object().address()} {}

	static constexpr int64_t RACK_Z_INDEX = 10;  // NOTE: You should recompile your mod if this value changes!


	inline void add_fixture(Variant new_rack, Variant rackpos);
};


inline void FixtureSpawner::add_fixture(Variant new_rack, Variant rackpos) { voidcall("add_fixture", new_rack, rackpos); }

#endif
