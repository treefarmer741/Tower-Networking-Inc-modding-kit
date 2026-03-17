#ifndef TNI_API_HEADER_DASHBOARDAPPLAUNCHER
#define TNI_API_HEADER_DASHBOARDAPPLAUNCHER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DashboardAppLauncher : public Control {
	using Control::Control;

	constexpr DashboardAppLauncher(Control base) : Control{base} {}
	constexpr DashboardAppLauncher(uint64_t addr) : Control{addr} {}
	constexpr DashboardAppLauncher(Object obj) : DashboardAppLauncher{obj.address()} {}
	DashboardAppLauncher(Variant variant) : DashboardAppLauncher{variant.as_object().address()} {}


	PROPERTY(app_scene, PackedScene);
	PROPERTY(icon_texture, Texture2D);
	PROPERTY(ind_texture, Texture2D);
	PROPERTY(title, String);
	PROPERTY(title_lbl, Label);
	PROPERTY(tbtn, TextureButton);
	PROPERTY(evind, TextureRect);

	inline Variant init_app();
};


inline Variant DashboardAppLauncher::init_app() { return operator()("init_app"); }

#endif
