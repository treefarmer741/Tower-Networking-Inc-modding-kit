#ifndef TNI_API_HEADER_TOWERPOPULATION
#define TNI_API_HEADER_TOWERPOPULATION
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Towerpopulation : public Container {
	using Container::Container;

	constexpr Towerpopulation(Container base) : Container{base} {}
	constexpr Towerpopulation(uint64_t addr) : Container{addr} {}
	constexpr Towerpopulation(Object obj) : Towerpopulation{obj.address()} {}
	Towerpopulation(Variant variant) : Towerpopulation{variant.as_object().address()} {}


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

inline void Towerpopulation::launch() { voidcall("launch"); }
inline void Towerpopulation::setup_floor_groups() { voidcall("setup_floor_groups"); }
inline void Towerpopulation::update_all_user_profile() { voidcall("update_all_user_profile"); }
inline void Towerpopulation::update_floor_group_display() { voidcall("update_floor_group_display"); }
inline void Towerpopulation::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Towerpopulation::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Towerpopulation::get_main_pane() { return operator()("get_main_pane"); }
inline void Towerpopulation::minimize() { voidcall("minimize"); }

#endif
