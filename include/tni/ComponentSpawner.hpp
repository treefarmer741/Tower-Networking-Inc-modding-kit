#ifndef TNI_API_HEADER_COMPONENTSPAWNER
#define TNI_API_HEADER_COMPONENTSPAWNER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ComponentSpawner : public Node2D {
	using Node2D::Node2D;

	constexpr ComponentSpawner(Node2D base) : Node2D{base} {}
	constexpr ComponentSpawner(uint64_t addr) : Node2D{addr} {}
	constexpr ComponentSpawner(Object obj) : ComponentSpawner{obj.address()} {}
	ComponentSpawner(Variant variant) : ComponentSpawner{variant.as_object().address()} {}



};



#endif
