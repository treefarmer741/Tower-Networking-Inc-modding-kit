#ifndef TNI_API_HEADER_VISIBLEPACKETS
#define TNI_API_HEADER_VISIBLEPACKETS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct VisiblePackets : public Node2D {
	using Node2D::Node2D;

	constexpr VisiblePackets(Node2D base) : Node2D{base} {}
	constexpr VisiblePackets(uint64_t addr) : Node2D{addr} {}
	constexpr VisiblePackets(Object obj) : VisiblePackets{obj.address()} {}
	VisiblePackets(Variant variant) : VisiblePackets{variant.as_object().address()} {}


	PROPERTY(tween, Tween);

	inline void animate_along_path(PackedArray<Vector2> points, double duration);
};


inline void VisiblePackets::animate_along_path(PackedArray<Vector2> points, double duration) { this->voidcall("animate_along_path", points, duration); }

#endif
