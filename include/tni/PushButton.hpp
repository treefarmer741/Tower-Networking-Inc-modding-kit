#ifndef TNI_API_HEADER_PUSHBUTTON
#define TNI_API_HEADER_PUSHBUTTON
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ClickableArea2D.hpp"

struct PushButton : public ClickableArea2D {
	using ClickableArea2D::ClickableArea2D;

	constexpr PushButton(ClickableArea2D base) : ClickableArea2D{base} {}
	constexpr PushButton(uint64_t addr) : ClickableArea2D{addr} {}
	constexpr PushButton(Object obj) : PushButton{obj.address()} {}
	PushButton(Variant variant) : PushButton{variant.as_object().address()} {}


	PROPERTY(tooltip_text, String);

	inline void click(const MultiplayerMouse& src);
};

#include "MultiplayerMouse.hpp"

inline void PushButton::click(const MultiplayerMouse& src) { this->voidcall("click", Object(reinterpret_cast<const Object*>(&src)->address())); }

#endif
