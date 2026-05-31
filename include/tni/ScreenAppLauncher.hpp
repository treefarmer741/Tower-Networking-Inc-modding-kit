#ifndef TNI_API_HEADER_SCREENAPPLAUNCHER
#define TNI_API_HEADER_SCREENAPPLAUNCHER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ScreenAppLauncher : public Control {
	using Control::Control;

	constexpr ScreenAppLauncher(Control base) : Control{base} {}
	constexpr ScreenAppLauncher(uint64_t addr) : Control{addr} {}
	constexpr ScreenAppLauncher(Object obj) : ScreenAppLauncher{obj.address()} {}
	ScreenAppLauncher(Variant variant) : ScreenAppLauncher{variant.as_object().address()} {}


	PROPERTY(app_scene, PackedScene);
	PROPERTY(icon_texture, Texture2D);
	PROPERTY(ind_texture, Texture2D);
	PROPERTY(title, String);
	PROPERTY(title_lbl, Label);
	PROPERTY(tbtn, TextureButton);
	PROPERTY(evind, TextureRect);

	inline Variant init_app();
};


inline Variant ScreenAppLauncher::init_app() { return this->operator()("init_app"); }

#endif
