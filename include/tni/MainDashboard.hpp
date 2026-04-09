#ifndef TNI_API_HEADER_MAINDASHBOARD
#define TNI_API_HEADER_MAINDASHBOARD
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MainDashboard : public Node {
	using Node::Node;

	constexpr MainDashboard(Node base) : Node{base} {}
	constexpr MainDashboard(uint64_t addr) : Node{addr} {}
	constexpr MainDashboard(Object obj) : MainDashboard{obj.address()} {}
	MainDashboard(Variant variant) : MainDashboard{variant.as_object().address()} {}


	PROPERTY(toast_control, Control);
	PROPERTY(launcher_container, Container);
	PROPERTY(launcher, Container);

	inline void setup_launcher(const DashboardAppLauncher& c, bool add_sal_as_child);
	inline void toast(String msg, int64_t duration);
	inline void show_home();
	inline void show_dashboard();
};

#include "DashboardAppLauncher.hpp"

inline void MainDashboard::setup_launcher(const DashboardAppLauncher& c, bool add_sal_as_child) { this->voidcall("setup_launcher", Object(reinterpret_cast<const Object*>(&c)->address()), add_sal_as_child); }
inline void MainDashboard::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline void MainDashboard::show_home() { this->voidcall("show_home"); }
inline void MainDashboard::show_dashboard() { this->voidcall("show_dashboard"); }

#endif
