#ifndef TNI_API_HEADER_SPLASHSCREEN
#define TNI_API_HEADER_SPLASHSCREEN
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SplashScreen : public Control {
	using Control::Control;

	constexpr SplashScreen(Control base) : Control{base} {}
	constexpr SplashScreen(uint64_t addr) : Control{addr} {}
	constexpr SplashScreen(Object obj) : SplashScreen{obj.address()} {}
	SplashScreen(Variant variant) : SplashScreen{variant.as_object().address()} {}


	PROPERTY(doti, int64_t);

	inline void done_loading();
};


inline void SplashScreen::done_loading() { this->voidcall("done_loading"); }

#endif
