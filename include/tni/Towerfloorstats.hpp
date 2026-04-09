#ifndef TNI_API_HEADER_TOWERFLOORSTATS
#define TNI_API_HEADER_TOWERFLOORSTATS
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "DashboardApp.hpp"

struct Towerfloorstats : public DashboardApp {
	using DashboardApp::DashboardApp;

	constexpr Towerfloorstats(DashboardApp base) : DashboardApp{base} {}
	constexpr Towerfloorstats(uint64_t addr) : DashboardApp{addr} {}
	constexpr Towerfloorstats(Object obj) : Towerfloorstats{obj.address()} {}
	Towerfloorstats(Variant variant) : Towerfloorstats{variant.as_object().address()} {}


	PROPERTY(refresh_timer, Timer);
	PROPERTY(issues1_text, RichTextLabel);
	PROPERTY(issues1_count, Label);
	PROPERTY(alert_icon, Sprite2D);
	PROPERTY(floor_label, Label);
	PROPERTY(main_user_label, Label);
	PROPERTY(total_floor_num, Variant);
	PROPERTY(user_issues, Variant);
	PROPERTY(selected_floor_num, Variant);
	PROPERTY(floor_options, Variant);
	PROPERTY(users, Variant);
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

inline void Towerfloorstats::launch() { this->voidcall("launch"); }
inline void Towerfloorstats::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Towerfloorstats::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Towerfloorstats::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Towerfloorstats::minimize() { this->voidcall("minimize"); }

#endif
