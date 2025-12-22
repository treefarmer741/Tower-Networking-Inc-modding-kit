#ifndef TNI_API_HEADER_TOGGLEPOWERSWITCH
#define TNI_API_HEADER_TOGGLEPOWERSWITCH
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TogglePowerSwitch : public Area2D {
	using Area2D::Area2D;

	constexpr TogglePowerSwitch(Area2D base) : Area2D{base} {}
	constexpr TogglePowerSwitch(uint64_t addr) : Area2D{addr} {}
	constexpr TogglePowerSwitch(Object obj) : TogglePowerSwitch{obj.address()} {}
	TogglePowerSwitch(Variant variant) : TogglePowerSwitch{variant.as_object().address()} {}


	PROPERTY(pointlight2d, PointLight2D);
	PROPERTY(physical_state, bool);
	PROPERTY(energy, double);
	PROPERTY(current_load, int64_t);
	PROPERTY(power_controller, PowerController);
	PROPERTY(default_intent, bool);
	PROPERTY(infinite_power_mode, bool);
	PROPERTY(light_color, Variant);
	PROPERTY(power, Power);
	PROPERTY(old_state, bool);
	PROPERTY(state, bool);
	PROPERTY(tooltip_text, String);

	inline void toggle(MultiplayerMouse _clicker);
	inline void click(MultiplayerMouse src);
};

#include "PowerController.hpp"
#include "Power.hpp"
#include "MultiplayerMouse.hpp"

inline void TogglePowerSwitch::toggle(MultiplayerMouse _clicker) { voidcall("toggle", _clicker); }
inline void TogglePowerSwitch::click(MultiplayerMouse src) { voidcall("click", src); }

#endif
