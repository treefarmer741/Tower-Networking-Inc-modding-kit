#ifndef TNI_API_HEADER_TOWERSATIETYBAR
#define TNI_API_HEADER_TOWERSATIETYBAR
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DashboardApp.hpp"

struct Towersatietybar : public DashboardApp {
	using DashboardApp::DashboardApp;

	constexpr Towersatietybar(DashboardApp base) : DashboardApp{base} {}
	constexpr Towersatietybar(uint64_t addr) : DashboardApp{addr} {}
	constexpr Towersatietybar(Object obj) : Towersatietybar{obj.address()} {}
	Towersatietybar(Variant variant) : Towersatietybar{variant.as_object().address()} {}

	PROPERTY(WARNING_FONT_COLOR, Variant);  // Const value type was not supported.
	static constexpr int64_t HEATMAP_GRID_WIDTH = 230;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t HEATMAP_CELL_MAX = 32;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t HEATMAP_CELL_MIN = 16;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(refresh_timer, Timer);
	PROPERTY(chart_panel, PanelContainer);
	PROPERTY(barline_chart, Node2D);
	PROPERTY(page_label, Label);
	PROPERTY(avg_value, Label);
	PROPERTY(fulfilled_value, Label);
	PROPERTY(warnings_value, Label);
	PROPERTY(next_button, Button);
	PROPERTY(heatmap_toggle, Button);
	PROPERTY(heatmap_legend, HBoxContainer);
	PROPERTY(heatmap_scale, TextureRect);
	PROPERTY(heatmap_panel, PanelContainer);
	PROPERTY(heatmap_rows, VBoxContainer);
	PROPERTY(heatmap_timer, Timer);
	PROPERTY(floors_per_group, int64_t);
	PROPERTY(floor_heatmap_row_scene, PackedScene);
	PROPERTY(current_floor_group, Variant);
	PROPERTY(main_pane, MainDashboard);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "MainDashboard.hpp"

inline void Towersatietybar::launch() { this->voidcall("launch"); }
inline void Towersatietybar::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Towersatietybar::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Towersatietybar::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Towersatietybar::minimize() { this->voidcall("minimize"); }

#endif
