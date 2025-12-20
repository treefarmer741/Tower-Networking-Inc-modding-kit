#ifndef TNI_API_HEADER_TOGGLESWITCH
#define TNI_API_HEADER_TOGGLESWITCH
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ToggleSwitch : public Area2D {
	using Area2D::Area2D;

	constexpr ToggleSwitch(Area2D base) : Area2D{base} {}
	constexpr ToggleSwitch(uint64_t addr) : Area2D{addr} {}
	constexpr ToggleSwitch(Object obj) : ToggleSwitch{obj.address()} {}
	ToggleSwitch(Variant variant) : ToggleSwitch{variant.as_object().address()} {}


	PROPERTY(old_state, bool);
	PROPERTY(state, bool);
	PROPERTY(tooltip_text, String);

	inline void toggle(MultiplayerMouse _clicker);
	inline void click(MultiplayerMouse src);
};

#include "MultiplayerMouse.hpp"

inline void ToggleSwitch::toggle(MultiplayerMouse _clicker) { voidcall("toggle", _clicker); }
inline void ToggleSwitch::click(MultiplayerMouse src) { voidcall("click", src); }

#endif
