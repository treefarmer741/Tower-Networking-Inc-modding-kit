#ifndef TNI_API_HEADER_DASHBOARDSCREEN
#define TNI_API_HEADER_DASHBOARDSCREEN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DashboardScreen : public Container {
	using Container::Container;

	constexpr DashboardScreen(Container base) : Container{base} {}
	constexpr DashboardScreen(uint64_t addr) : Container{addr} {}
	constexpr DashboardScreen(Object obj) : DashboardScreen{obj.address()} {}
	DashboardScreen(Variant variant) : DashboardScreen{variant.as_object().address()} {}


	PROPERTY(toast_control, Control);
	PROPERTY(main_control, Control);
	PROPERTY(launcher, Variant);

	inline void toast(String msg, int64_t duration);
	inline void on_power_off();
	inline void on_power_on();
};


inline void DashboardScreen::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline void DashboardScreen::on_power_off() { voidcall("on_power_off"); }
inline void DashboardScreen::on_power_on() { voidcall("on_power_on"); }

#endif
