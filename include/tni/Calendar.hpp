#ifndef TNI_API_HEADER_CALENDAR
#define TNI_API_HEADER_CALENDAR
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Calendar : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Calendar(ScreenApp base) : ScreenApp{base} {}
	constexpr Calendar(uint64_t addr) : ScreenApp{addr} {}
	constexpr Calendar(Object obj) : Calendar{obj.address()} {}
	Calendar(Variant variant) : Calendar{variant.as_object().address()} {}

	PROPERTY(tag_check_scn, Variant);  // Const value type was not supported.
	static constexpr int64_t DAYS_PER_PAGE = 25;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t TAG_LIST_MAX_ROWS = 5;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(day_entry_scn, PackedScene);
	PROPERTY(label_chip_scn, PackedScene);
	PROPERTY(range_label, Label);
	PROPERTY(prev_button, Button);
	PROPERTY(next_button, Button);
	PROPERTY(day_grid, GridContainer);
	PROPERTY(event_chips, Container);
	PROPERTY(my_events_panel, Container);
	PROPERTY(label_chips, Container);
	PROPERTY(day_title, Label);
	PROPERTY(add_tag_button, Button);
	PROPERTY(tag_panel, Control);
	PROPERTY(tag_scroll, ScrollContainer);
	PROPERTY(tag_checks, Container);
	PROPERTY(tag_separator, Control);
	PROPERTY(label_name_edit, LineEdit);
	PROPERTY(hue_preview, ColorRect);
	PROPERTY(hue_slider, HSlider);
	PROPERTY(labels, Variant);
	PROPERTY(day_labels, Variant);
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

inline void Calendar::launch() { this->voidcall("launch"); }
inline void Calendar::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Calendar::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Calendar::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Calendar::minimize() { this->voidcall("minimize"); }

#endif
