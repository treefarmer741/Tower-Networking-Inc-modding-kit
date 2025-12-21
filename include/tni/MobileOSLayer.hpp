#ifndef TNI_API_HEADER_MOBILEOSLAYER
#define TNI_API_HEADER_MOBILEOSLAYER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MobileOSLayer : public CanvasLayer {
	using CanvasLayer::CanvasLayer;

	constexpr MobileOSLayer(CanvasLayer base) : CanvasLayer{base} {}
	constexpr MobileOSLayer(uint64_t addr) : CanvasLayer{addr} {}
	constexpr MobileOSLayer(Object obj) : MobileOSLayer{obj.address()} {}
	MobileOSLayer(Variant variant) : MobileOSLayer{variant.as_object().address()} {}

	static constexpr double TILT_RAD = 0.17453292519943;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(second_monitor_enabled, bool);
	PROPERTY(screen, Screen);
	PROPERTY(second_screen, Screen);
	PROPERTY(activator_control, Container);
	PROPERTY(secmon_control, Container);
	PROPERTY(screen_main, Container);
	PROPERTY(secondmon_main, Container);
	PROPERTY(screen_toast, Container);
	PROPERTY(at_home_screen, bool);
	PROPERTY(second_monitor_showing_at_home_screen, bool);
	PROPERTY(at_netshell_screen, bool);
	PROPERTY(at_kb_input_screen, bool);
	PROPERTY(safe_to_use_keyboard, bool);
	PROPERTY(is_on_right, bool);
	PROPERTY(showing, bool);
	PROPERTY(second_monitor_showing, bool);
	PROPERTY(twn, Tween);
	PROPERTY(twn2, Tween);
	PROPERTY(twnkb, Tween);
	PROPERTY(twnswing, Tween);
	PROPERTY(mouse_in_firstmon, bool);
	PROPERTY(mouse_in_secondmon, bool);
	PROPERTY(mouse_is_inside, bool);

	inline void internal_captured_event_propagate(InputEvent event);
	inline void left_click();
	inline void right_click();
	inline void middle_click();
	inline void play_coffee_animation();
	inline void play_tea_animation();
	inline void play_water_animation();
};

#include "Screen.hpp"

inline void MobileOSLayer::internal_captured_event_propagate(InputEvent event) { voidcall("internal_captured_event_propagate", event); }
inline void MobileOSLayer::left_click() { voidcall("left_click"); }
inline void MobileOSLayer::right_click() { voidcall("right_click"); }
inline void MobileOSLayer::middle_click() { voidcall("middle_click"); }
inline void MobileOSLayer::play_coffee_animation() { voidcall("play_coffee_animation"); }
inline void MobileOSLayer::play_tea_animation() { voidcall("play_tea_animation"); }
inline void MobileOSLayer::play_water_animation() { voidcall("play_water_animation"); }

#endif
