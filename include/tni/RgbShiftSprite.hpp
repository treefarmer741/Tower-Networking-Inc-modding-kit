#ifndef TNI_API_HEADER_RGBSHIFTSPRITE
#define TNI_API_HEADER_RGBSHIFTSPRITE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RgbShiftSprite : public Sprite2D {
	using Sprite2D::Sprite2D;

	constexpr RgbShiftSprite(Sprite2D base) : Sprite2D{base} {}
	constexpr RgbShiftSprite(uint64_t addr) : Sprite2D{addr} {}
	constexpr RgbShiftSprite(Object obj) : RgbShiftSprite{obj.address()} {}
	RgbShiftSprite(Variant variant) : RgbShiftSprite{variant.as_object().address()} {}



};



#endif
