#ifndef TNI_API_HEADER_TENABOLT
#define TNI_API_HEADER_TENABOLT
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Tenabolt : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Tenabolt(ScreenApp base) : ScreenApp{base} {}
	constexpr Tenabolt(uint64_t addr) : ScreenApp{addr} {}
	constexpr Tenabolt(Object obj) : Tenabolt{obj.address()} {}
	Tenabolt(Variant variant) : Tenabolt{variant.as_object().address()} {}


	PROPERTY(room_preview, ColorRect);
	PROPERTY(dark_mode_switch, CheckButton);
	PROPERTY(darkness_row, HBoxContainer);
	PROPERTY(darkness_slider, HSlider);
	PROPERTY(darkness_value, Label);
	PROPERTY(tint_slider, HSlider);
	PROPERTY(tint_value, Label);
	PROPERTY(strength_row, HBoxContainer);
	PROPERTY(strength_slider, HSlider);
	PROPERTY(strength_value, Label);
	PROPERTY(lamps_default_button, Button);
	PROPERTY(lamps_off_button, Button);
	PROPERTY(lamps_on_button, Button);
	PROPERTY(floor_rows, VBoxContainer);
	PROPERTY(floor_row_scn, PackedScene);
	PROPERTY(outage_color, Variant);
	PROPERTY(surge_color, Variant);
	PROPERTY(outage_mod_scn, PackedScene);
	PROPERTY(surge_mod_scn, PackedScene);
	PROPERTY(tabs, TabContainer);
	PROPERTY(floor_power_tab, Control);
	PROPERTY(no_events_label, Label);
	PROPERTY(preset_rows, VBoxContainer);
	PROPERTY(preset_row_scn, PackedScene);
	PROPERTY(preset_panel, PanelContainer);
	PROPERTY(preset_scroll, ScrollContainer);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "MainPane.hpp"

inline void Tenabolt::launch() { this->voidcall("launch"); }
inline void Tenabolt::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Tenabolt::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Tenabolt::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Tenabolt::minimize() { this->voidcall("minimize"); }

#endif
