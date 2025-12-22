#ifndef TNI_API_HEADER_PLAYERHAND
#define TNI_API_HEADER_PLAYERHAND
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlayerHand : public CharacterBody2D {
	using CharacterBody2D::CharacterBody2D;

	constexpr PlayerHand(CharacterBody2D base) : CharacterBody2D{base} {}
	constexpr PlayerHand(uint64_t addr) : CharacterBody2D{addr} {}
	constexpr PlayerHand(Object obj) : PlayerHand{obj.address()} {}
	PlayerHand(Variant variant) : PlayerHand{variant.as_object().address()} {}

	static constexpr int64_t slide_speed = 1000;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(disabled, bool);
	PROPERTY(showing, bool);
	PROPERTY(at_home_screen, bool);
	PROPERTY(using_terminal, bool);
	PROPERTY(activator_control, Container);
	PROPERTY(screen_main, Container);
	PROPERTY(height, double);
	PROPERTY(width, double);
	PROPERTY(setpoint, double);

};



#endif
