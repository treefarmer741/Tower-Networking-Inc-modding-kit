#ifndef TNI_API_HEADER_LOCATIONPIECE
#define TNI_API_HEADER_LOCATIONPIECE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LocationPiece : public Node2D {
	using Node2D::Node2D;

	constexpr LocationPiece(Node2D base) : Node2D{base} {}
	constexpr LocationPiece(uint64_t addr) : Node2D{addr} {}
	constexpr LocationPiece(Object obj) : LocationPiece{obj.address()} {}
	LocationPiece(Variant variant) : LocationPiece{variant.as_object().address()} {}


	PROPERTY(refborder, Variant);
	PROPERTY(nodes_to_add, Variant);

	inline void affix_at_location(Variant pos, Location location, Variant is_server);
};

#include "Location.hpp"

inline void LocationPiece::affix_at_location(Variant pos, Location location, Variant is_server) { voidcall("affix_at_location", pos, location, is_server); }

#endif
