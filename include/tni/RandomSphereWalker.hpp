#ifndef TNI_API_HEADER_RANDOMSPHEREWALKER
#define TNI_API_HEADER_RANDOMSPHEREWALKER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct RandomSphereWalker : public Node3D {
	using Node3D::Node3D;

	constexpr RandomSphereWalker(Node3D base) : Node3D{base} {}
	constexpr RandomSphereWalker(uint64_t addr) : Node3D{addr} {}
	constexpr RandomSphereWalker(Object obj) : RandomSphereWalker{obj.address()} {}
	RandomSphereWalker(Variant variant) : RandomSphereWalker{variant.as_object().address()} {}


	PROPERTY(walker_nodes, Variant);
	PROPERTY(radius, double);
	PROPERTY(step_size, double);
	PROPERTY(update_period, double);
	PROPERTY(random_seed, int64_t);
	PROPERTY(rng, RandomNumberGenerator);
	PROPERTY(node_velocities, Variant);

	inline void trigger_random_walk();
};


inline void RandomSphereWalker::trigger_random_walk() { this->voidcall("trigger_random_walk"); }

#endif
