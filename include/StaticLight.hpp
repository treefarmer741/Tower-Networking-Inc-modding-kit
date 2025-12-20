#ifndef TNI_API_HEADER_STATICLIGHT
#define TNI_API_HEADER_STATICLIGHT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct StaticLight : public Node2D {
	using Node2D::Node2D;

	constexpr StaticLight(Node2D base) : Node2D{base} {}
	constexpr StaticLight(uint64_t addr) : Node2D{addr} {}
	constexpr StaticLight(Object obj) : StaticLight{obj.address()} {}
	StaticLight(Variant variant) : StaticLight{variant.as_object().address()} {}


	PROPERTY(light_color, Variant);

};



#endif
