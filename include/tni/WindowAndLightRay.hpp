#ifndef TNI_API_HEADER_WINDOWANDLIGHTRAY
#define TNI_API_HEADER_WINDOWANDLIGHTRAY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ParallaxWindow.hpp"

struct WindowAndLightRay : public ParallaxWindow {
	using ParallaxWindow::ParallaxWindow;

	constexpr WindowAndLightRay(ParallaxWindow base) : ParallaxWindow{base} {}
	constexpr WindowAndLightRay(uint64_t addr) : ParallaxWindow{addr} {}
	constexpr WindowAndLightRay(Object obj) : WindowAndLightRay{obj.address()} {}
	WindowAndLightRay(Variant variant) : WindowAndLightRay{variant.as_object().address()} {}


	PROPERTY(region_center, Variant);
	PROPERTY(region_pos, Variant);
	PROPERTY(slide_margin, Variant);
	PROPERTY(background_margin, Variant);
	PROPERTY(region_size, Variant);

};



#endif
