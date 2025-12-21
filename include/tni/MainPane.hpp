#ifndef TNI_API_HEADER_MAINPANE
#define TNI_API_HEADER_MAINPANE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MainPane : public Container {
	using Container::Container;

	constexpr MainPane(Container base) : Container{base} {}
	constexpr MainPane(uint64_t addr) : Container{addr} {}
	constexpr MainPane(Object obj) : MainPane{obj.address()} {}
	MainPane(Variant variant) : MainPane{variant.as_object().address()} {}


	PROPERTY(toast_control, Control);
	PROPERTY(launcher_container, Container);
	PROPERTY(current_foreground_app, Node);
	PROPERTY(previous_foreground_app, Node);

	inline void setup_launcher(ScreenAppLauncher c, bool add_sal_as_child);
	inline void toast(String msg, int64_t duration);
	inline void show_home();
	inline void launch_app(String app_name);
};

#include "ScreenAppLauncher.hpp"

inline void MainPane::setup_launcher(ScreenAppLauncher c, bool add_sal_as_child) { voidcall("setup_launcher", c, add_sal_as_child); }
inline void MainPane::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline void MainPane::show_home() { voidcall("show_home"); }
inline void MainPane::launch_app(String app_name) { voidcall("launch_app", app_name); }

#endif
