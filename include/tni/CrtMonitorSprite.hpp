#ifndef TNI_API_HEADER_CRTMONITORSPRITE
#define TNI_API_HEADER_CRTMONITORSPRITE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CrtMonitorSprite : public Sprite2D {
	using Sprite2D::Sprite2D;

	constexpr CrtMonitorSprite(Sprite2D base) : Sprite2D{base} {}
	constexpr CrtMonitorSprite(uint64_t addr) : Sprite2D{addr} {}
	constexpr CrtMonitorSprite(Object obj) : CrtMonitorSprite{obj.address()} {}
	CrtMonitorSprite(Variant variant) : CrtMonitorSprite{variant.as_object().address()} {}



};



#endif
