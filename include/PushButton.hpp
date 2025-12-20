#ifndef TNI_API_HEADER_PUSHBUTTON
#define TNI_API_HEADER_PUSHBUTTON
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PushButton : public Area2D {
	using Area2D::Area2D;

	constexpr PushButton(Area2D base) : Area2D{base} {}
	constexpr PushButton(uint64_t addr) : Area2D{addr} {}
	constexpr PushButton(Object obj) : PushButton{obj.address()} {}
	PushButton(Variant variant) : PushButton{variant.as_object().address()} {}


	PROPERTY(tooltip_text, String);

	inline void click(MultiplayerMouse src);
};

#include "MultiplayerMouse.hpp"

inline void PushButton::click(MultiplayerMouse src) { voidcall("click", src); }

#endif
