#ifndef TNI_API_HEADER_MENUBACKGROUND
#define TNI_API_HEADER_MENUBACKGROUND
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MenuBackground : public AnimatedSprite2D {
	using AnimatedSprite2D::AnimatedSprite2D;

	constexpr MenuBackground(AnimatedSprite2D base) : AnimatedSprite2D{base} {}
	constexpr MenuBackground(uint64_t addr) : AnimatedSprite2D{addr} {}
	constexpr MenuBackground(Object obj) : MenuBackground{obj.address()} {}
	MenuBackground(Variant variant) : MenuBackground{variant.as_object().address()} {}



};



#endif
