#ifndef TNI_API_HEADER_GRAPHICSSETTINGS
#define TNI_API_HEADER_GRAPHICSSETTINGS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GraphicsSettings : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr GraphicsSettings(VBoxContainer base) : VBoxContainer{base} {}
	constexpr GraphicsSettings(uint64_t addr) : VBoxContainer{addr} {}
	constexpr GraphicsSettings(Object obj) : GraphicsSettings{obj.address()} {}
	GraphicsSettings(Variant variant) : GraphicsSettings{variant.as_object().address()} {}


	PROPERTY(vsync, Variant);
	PROPERTY(window_mode, Variant);
	PROPERTY(rgb_shift_factor, Variant);
	PROPERTY(crt_monitor_fx, Variant);
	PROPERTY(flickering_lights_fx, Variant);

};



#endif
