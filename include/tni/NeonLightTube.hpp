#ifndef TNI_API_HEADER_NEONLIGHTTUBE
#define TNI_API_HEADER_NEONLIGHTTUBE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct NeonLightTube : public Sprite2D {
	using Sprite2D::Sprite2D;

	constexpr NeonLightTube(Sprite2D base) : Sprite2D{base} {}
	constexpr NeonLightTube(uint64_t addr) : Sprite2D{addr} {}
	constexpr NeonLightTube(Object obj) : NeonLightTube{obj.address()} {}
	NeonLightTube(Variant variant) : NeonLightTube{variant.as_object().address()} {}



};



#endif
