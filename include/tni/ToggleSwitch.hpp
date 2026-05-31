#ifndef TNI_API_HEADER_TOGGLESWITCH
#define TNI_API_HEADER_TOGGLESWITCH
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ClickableArea2D.hpp"

struct ToggleSwitch : public ClickableArea2D {
	using ClickableArea2D::ClickableArea2D;

	constexpr ToggleSwitch(ClickableArea2D base) : ClickableArea2D{base} {}
	constexpr ToggleSwitch(uint64_t addr) : ClickableArea2D{addr} {}
	constexpr ToggleSwitch(Object obj) : ToggleSwitch{obj.address()} {}
	ToggleSwitch(Variant variant) : ToggleSwitch{variant.as_object().address()} {}


	PROPERTY(old_state, bool);
	PROPERTY(state, bool);
	PROPERTY(tooltip_text, String);

	inline void toggle(const MultiplayerMouse& _clicker);
	inline void click(const MultiplayerMouse& src);
};

#include "MultiplayerMouse.hpp"

inline void ToggleSwitch::toggle(const MultiplayerMouse& _clicker) { this->voidcall("toggle", Object(reinterpret_cast<const Object*>(&_clicker)->address())); }
inline void ToggleSwitch::click(const MultiplayerMouse& src) { this->voidcall("click", Object(reinterpret_cast<const Object*>(&src)->address())); }

#endif
