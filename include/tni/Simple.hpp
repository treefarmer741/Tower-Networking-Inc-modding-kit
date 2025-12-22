#ifndef TNI_API_HEADER_SIMPLE
#define TNI_API_HEADER_SIMPLE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Simple : public Node2D {
	using Node2D::Node2D;

	constexpr Simple(Node2D base) : Node2D{base} {}
	constexpr Simple(uint64_t addr) : Node2D{addr} {}
	constexpr Simple(Object obj) : Simple{obj.address()} {}
	Simple(Variant variant) : Simple{variant.as_object().address()} {}


	PROPERTY(location, Location);

};

#include "Location.hpp"


#endif
