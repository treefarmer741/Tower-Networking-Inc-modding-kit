#ifndef TNI_API_HEADER_TYPINGANIMATION
#define TNI_API_HEADER_TYPINGANIMATION
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TypingAnimation : public Sprite2D {
	using Sprite2D::Sprite2D;

	constexpr TypingAnimation(Sprite2D base) : Sprite2D{base} {}
	constexpr TypingAnimation(uint64_t addr) : Sprite2D{addr} {}
	constexpr TypingAnimation(Object obj) : TypingAnimation{obj.address()} {}
	TypingAnimation(Variant variant) : TypingAnimation{variant.as_object().address()} {}

	static constexpr double SATIETY_THRESHOLD = 0.1;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t MIN_ACTIVE_USERS = 5;  // NOTE: You should recompile your mod if this value changes!


};



#endif
