#ifndef TNI_API_HEADER_TOWERDEVICEUNITS
#define TNI_API_HEADER_TOWERDEVICEUNITS
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DashboardApp.hpp"

struct Towerdeviceunits : public DashboardApp {
	using DashboardApp::DashboardApp;

	constexpr Towerdeviceunits(DashboardApp base) : DashboardApp{base} {}
	constexpr Towerdeviceunits(uint64_t addr) : DashboardApp{addr} {}
	constexpr Towerdeviceunits(Object obj) : Towerdeviceunits{obj.address()} {}
	Towerdeviceunits(Variant variant) : Towerdeviceunits{variant.as_object().address()} {}

	PROPERTY(WARNING_FONT_COLOR, Variant);  // Const value type was not supported.
	static constexpr int64_t ENDING_DAYS = 5;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t BAR_COUNT = 15;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(refresh_timer, Timer);
	PROPERTY(view_label, Label);
	PROPERTY(view_toggle, Button);
	PROPERTY(devices_value, Label);
	PROPERTY(autosvc_value, Label);
	PROPERTY(migration_value, Label);
	PROPERTY(expired_value, Label);
	PROPERTY(ending_value, Label);
	PROPERTY(daily_fee_value, Label);
	PROPERTY(bar_rows, VBoxContainer);
	PROPERTY(bar_row_scene, PackedScene);
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

inline void Towerdeviceunits::launch() { this->voidcall("launch"); }
inline void Towerdeviceunits::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Towerdeviceunits::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Towerdeviceunits::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Towerdeviceunits::minimize() { this->voidcall("minimize"); }

#endif
