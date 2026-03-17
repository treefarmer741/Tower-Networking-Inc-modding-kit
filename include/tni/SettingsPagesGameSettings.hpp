#ifndef TNI_API_HEADER_SETTINGSPAGESGAMESETTINGS
#define TNI_API_HEADER_SETTINGSPAGESGAMESETTINGS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SettingsPagesGameSettings : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr SettingsPagesGameSettings(VBoxContainer base) : VBoxContainer{base} {}
	constexpr SettingsPagesGameSettings(uint64_t addr) : VBoxContainer{addr} {}
	constexpr SettingsPagesGameSettings(Object obj) : SettingsPagesGameSettings{obj.address()} {}
	SettingsPagesGameSettings(Variant variant) : SettingsPagesGameSettings{variant.as_object().address()} {}


	PROPERTY(mouse_pan_speed, Variant);
	PROPERTY(keyboard_pan_speed, Variant);
	PROPERTY(drag_pan_speed, Variant);
	PROPERTY(max_fps, Variant);
	PROPERTY(language_option, Variant);
	PROPERTY(show_announcements_on_start, Variant);
	PROPERTY(dmarkv2sel, Variant);
	PROPERTY(shift_to_pan, Variant);
	PROPERTY(show_username, Variant);
	PROPERTY(show_help_guides, Variant);
	PROPERTY(physim, Variant);
	PROPERTY(timcphyanim, Variant);

};



#endif
