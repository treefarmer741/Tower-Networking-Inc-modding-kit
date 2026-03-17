#ifndef TNI_API_HEADER_LOCATIONSPAWNREQUIREMENT
#define TNI_API_HEADER_LOCATIONSPAWNREQUIREMENT
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LocationSpawnRequirement : public Resource {
	using Resource::Resource;

	constexpr LocationSpawnRequirement(Resource base) : Resource{base} {}
	constexpr LocationSpawnRequirement(uint64_t addr) : Resource{addr} {}
	constexpr LocationSpawnRequirement(Object obj) : LocationSpawnRequirement{obj.address()} {}
	LocationSpawnRequirement(Variant variant) : LocationSpawnRequirement{variant.as_object().address()} {}


	PROPERTY(user_scene, PackedScene);
	PROPERTY(min_count, int64_t);

	inline Variant is_satisfied(Variant locations);
};


inline Variant LocationSpawnRequirement::is_satisfied(Variant locations) { return operator()("is_satisfied", locations); }

#endif
