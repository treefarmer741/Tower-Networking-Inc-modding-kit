#ifndef TNI_API_HEADER_TOWERSATIETYBAR
#define TNI_API_HEADER_TOWERSATIETYBAR
// Generated API for game version 0.10.11
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


	PROPERTY(refresh_timer, Timer);
	PROPERTY(barline_chart, Node2D);
	PROPERTY(floors_per_group, int64_t);
	PROPERTY(users, Variant);
	PROPERTY(floors, Variant);
	PROPERTY(bar_dataset, Variant);
	PROPERTY(current_floor_group, Variant);
	PROPERTY(all_user_types, Variant);
	PROPERTY(all_user_dict, Variant);
	PROPERTY(floor_groups, Variant);
	PROPERTY(all_user_values, Variant);
	PROPERTY(total_floors, Variant);
	PROPERTY(main_pane, MainDashboard);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void setup_floor_groups();
	inline void update_all_user_profile();
	inline void update_floor_group_display();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "MainDashboard.hpp"

inline void Towersatietybar::launch() { this->voidcall("launch"); }
inline void Towersatietybar::setup_floor_groups() { this->voidcall("setup_floor_groups"); }
inline void Towersatietybar::update_all_user_profile() { this->voidcall("update_all_user_profile"); }
inline void Towersatietybar::update_floor_group_display() { this->voidcall("update_floor_group_display"); }
inline void Towersatietybar::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Towersatietybar::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Towersatietybar::get_main_pane() { return this->operator()("get_main_pane"); }
inline void Towersatietybar::minimize() { this->voidcall("minimize"); }

#endif
