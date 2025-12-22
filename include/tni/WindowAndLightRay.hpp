#ifndef TNI_API_HEADER_WINDOWANDLIGHTRAY
#define TNI_API_HEADER_WINDOWANDLIGHTRAY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WindowAndLightRay : public Node2D {
	using Node2D::Node2D;

	constexpr WindowAndLightRay(Node2D base) : Node2D{base} {}
	constexpr WindowAndLightRay(uint64_t addr) : Node2D{addr} {}
	constexpr WindowAndLightRay(Object obj) : WindowAndLightRay{obj.address()} {}
	WindowAndLightRay(Variant variant) : WindowAndLightRay{variant.as_object().address()} {}


	PROPERTY(region_center, Variant);
	PROPERTY(region_pos, Variant);
	PROPERTY(slide_margin, Variant);
	PROPERTY(background_margin, Variant);
	PROPERTY(region_size, Variant);

};



#endif
