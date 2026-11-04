#ifndef TNI_API_HEADER_TOWERPOWEREVENTS
#define TNI_API_HEADER_TOWERPOWEREVENTS
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DashboardApp.hpp"

struct Towerpowerevents : public DashboardApp {
	using DashboardApp::DashboardApp;

	constexpr Towerpowerevents(DashboardApp base) : DashboardApp{base} {}
	constexpr Towerpowerevents(uint64_t addr) : DashboardApp{addr} {}
	constexpr Towerpowerevents(Object obj) : Towerpowerevents{obj.address()} {}
	Towerpowerevents(Variant variant) : Towerpowerevents{variant.as_object().address()} {}


	PROPERTY(scheduled_value, Label);
	PROPERTY(unscheduled_value, Label);
	PROPERTY(surges_value, Label);
	PROPERTY(surged_value, Label);
	PROPERTY(list_panel, PanelContainer);
	PROPERTY(floor_rows, VBoxContainer);
	PROPERTY(no_events_label, Label);
	PROPERTY(floor_row_scn, PackedScene);
	PROPERTY(outage_mod_scn, PackedScene);
	PROPERTY(surge_mod_scn, PackedScene);
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

inline void Towerpowerevents::launch() { this->voidcall("launch"); }
inline void Towerpowerevents::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Towerpowerevents::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Towerpowerevents::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Towerpowerevents::minimize() { this->voidcall("minimize"); }

#endif
