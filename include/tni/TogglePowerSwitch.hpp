#ifndef TNI_API_HEADER_TOGGLEPOWERSWITCH
#define TNI_API_HEADER_TOGGLEPOWERSWITCH
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ToggleSwitch.hpp"

struct TogglePowerSwitch : public ToggleSwitch {
	using ToggleSwitch::ToggleSwitch;

	constexpr TogglePowerSwitch(ToggleSwitch base) : ToggleSwitch{base} {}
	constexpr TogglePowerSwitch(uint64_t addr) : ToggleSwitch{addr} {}
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

	inline void toggle(const MultiplayerMouse& _clicker);
	inline void click(const MultiplayerMouse& src);
};

#include "PowerController.hpp"
#include "Power.hpp"
#include "MultiplayerMouse.hpp"

inline void TogglePowerSwitch::toggle(const MultiplayerMouse& _clicker) { this->voidcall("toggle", Object(reinterpret_cast<const Object*>(&_clicker)->address())); }
inline void TogglePowerSwitch::click(const MultiplayerMouse& src) { this->voidcall("click", Object(reinterpret_cast<const Object*>(&src)->address())); }

#endif
