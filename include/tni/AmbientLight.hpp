#ifndef TNI_API_HEADER_AMBIENTLIGHT
#define TNI_API_HEADER_AMBIENTLIGHT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct AmbientLight : public ColorRect {
	using ColorRect::ColorRect;

	constexpr AmbientLight(ColorRect base) : ColorRect{base} {}
	constexpr AmbientLight(uint64_t addr) : ColorRect{addr} {}
	constexpr AmbientLight(Object obj) : AmbientLight{obj.address()} {}
	AmbientLight(Variant variant) : AmbientLight{variant.as_object().address()} {}


	PROPERTY(ambient_light, bool);
	PROPERTY(light_color, Variant);
	PROPERTY(light_intensity, double);
	PROPERTY(light_and_shadow, Variant);
	PROPERTY(increment, Variant);

};



#endif
