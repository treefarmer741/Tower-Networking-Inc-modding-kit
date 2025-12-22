#ifndef TNI_API_HEADER_LOADINGSCREEN
#define TNI_API_HEADER_LOADINGSCREEN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LoadingScreen : public Control {
	using Control::Control;

	constexpr LoadingScreen(Control base) : Control{base} {}
	constexpr LoadingScreen(uint64_t addr) : Control{addr} {}
	constexpr LoadingScreen(Object obj) : LoadingScreen{obj.address()} {}
	LoadingScreen(Variant variant) : LoadingScreen{variant.as_object().address()} {}

	static constexpr double HINT_SHOW_SEC = 5.0;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(aplayer, AnimationPlayer);
	PROPERTY(loading_screen_s1, Control);
	PROPERTY(hint_change_timer, Timer);
	PROPERTY(short_wait_timer, Timer);
	PROPERTY(start_load_timer, Timer);
	PROPERTY(ss_textures, Variant);
	PROPERTY(ss_num, int64_t);
	PROPERTY(hint_container, Container);
	PROPERTY(hint_controls, Variant);
	PROPERTY(hint_num, int64_t);

	inline void show_hint(int64_t n);
	inline void hide_after_shortwait(double n);
	inline void cycle_hint();
};


inline void LoadingScreen::show_hint(int64_t n) { voidcall("show_hint", n); }
inline void LoadingScreen::hide_after_shortwait(double n) { voidcall("hide_after_shortwait", n); }
inline void LoadingScreen::cycle_hint() { voidcall("cycle_hint"); }

#endif
