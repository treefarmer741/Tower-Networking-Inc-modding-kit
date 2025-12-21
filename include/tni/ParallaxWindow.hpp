#ifndef TNI_API_HEADER_PARALLAXWINDOW
#define TNI_API_HEADER_PARALLAXWINDOW
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ParallaxWindow : public Node2D {
	using Node2D::Node2D;

	constexpr ParallaxWindow(Node2D base) : Node2D{base} {}
	constexpr ParallaxWindow(uint64_t addr) : Node2D{addr} {}
	constexpr ParallaxWindow(Object obj) : ParallaxWindow{obj.address()} {}
	ParallaxWindow(Variant variant) : ParallaxWindow{variant.as_object().address()} {}


	PROPERTY(region_center, Variant);
	PROPERTY(region_pos, Variant);
	PROPERTY(slide_margin, Variant);
	PROPERTY(background_margin, Variant);
	PROPERTY(region_size, Variant);

};



#endif
