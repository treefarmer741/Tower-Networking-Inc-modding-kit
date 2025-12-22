#ifndef TNI_API_HEADER_RGBSHIFT
#define TNI_API_HEADER_RGBSHIFT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct RgbShift : public TextureRect {
	using TextureRect::TextureRect;

	constexpr RgbShift(TextureRect base) : TextureRect{base} {}
	constexpr RgbShift(uint64_t addr) : TextureRect{addr} {}
	constexpr RgbShift(Object obj) : RgbShift{obj.address()} {}
	RgbShift(Variant variant) : RgbShift{variant.as_object().address()} {}



};



#endif
