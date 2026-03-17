#ifndef TNI_API_HEADER_DASHBOARDAPP
#define TNI_API_HEADER_DASHBOARDAPP
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DashboardApp : public Container {
	using Container::Container;

	constexpr DashboardApp(Container base) : Container{base} {}
	constexpr DashboardApp(uint64_t addr) : Container{addr} {}
	constexpr DashboardApp(Object obj) : DashboardApp{obj.address()} {}
	DashboardApp(Variant variant) : DashboardApp{variant.as_object().address()} {}


	PROPERTY(main_pane, MainDashboard);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
	inline void launch();
};

#include "MainDashboard.hpp"

inline void DashboardApp::clear_dynamic() { voidcall("clear_dynamic"); }
inline void DashboardApp::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant DashboardApp::get_main_pane() { return operator()("get_main_pane"); }
inline void DashboardApp::minimize() { voidcall("minimize"); }
inline void DashboardApp::launch() { voidcall("launch"); }

#endif
