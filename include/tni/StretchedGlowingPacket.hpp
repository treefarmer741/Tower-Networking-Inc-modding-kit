#ifndef TNI_API_HEADER_STRETCHEDGLOWINGPACKET
#define TNI_API_HEADER_STRETCHEDGLOWINGPACKET
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct StretchedGlowingPacket : public Node2D {
	using Node2D::Node2D;

	constexpr StretchedGlowingPacket(Node2D base) : Node2D{base} {}
	constexpr StretchedGlowingPacket(uint64_t addr) : Node2D{addr} {}
	constexpr StretchedGlowingPacket(Object obj) : StretchedGlowingPacket{obj.address()} {}
	StretchedGlowingPacket(Variant variant) : StretchedGlowingPacket{variant.as_object().address()} {}



	inline void animate_along_path(PackedArray<Vector2> points, double duration);
};


inline void StretchedGlowingPacket::animate_along_path(PackedArray<Vector2> points, double duration) { this->voidcall("animate_along_path", points, duration); }

#endif
