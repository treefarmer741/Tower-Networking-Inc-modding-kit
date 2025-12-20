#ifndef TNI_API_HEADER_CLICKABLEAREA2D
#define TNI_API_HEADER_CLICKABLEAREA2D
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ClickableArea2D : public Area2D {
	using Area2D::Area2D;

	constexpr ClickableArea2D(Area2D base) : Area2D{base} {}
	constexpr ClickableArea2D(uint64_t addr) : Area2D{addr} {}
	constexpr ClickableArea2D(Object obj) : ClickableArea2D{obj.address()} {}
	ClickableArea2D(Variant variant) : ClickableArea2D{variant.as_object().address()} {}


	PROPERTY(tooltip_text, String);

	inline void click(MultiplayerMouse src);
};

#include "MultiplayerMouse.hpp"

inline void ClickableArea2D::click(MultiplayerMouse src) { voidcall("click", src); }

#endif
