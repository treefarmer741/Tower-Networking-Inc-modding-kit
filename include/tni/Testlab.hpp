#ifndef TNI_API_HEADER_TESTLAB
#define TNI_API_HEADER_TESTLAB
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Testlab : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Testlab(ScreenApp base) : ScreenApp{base} {}
	constexpr Testlab(uint64_t addr) : ScreenApp{addr} {}
	constexpr Testlab(Object obj) : Testlab{obj.address()} {}
	Testlab(Variant variant) : Testlab{variant.as_object().address()} {}

	static constexpr int64_t EVENT_OUTAGE = 0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t EVENT_SURGE = 1;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(event_type_selector, OptionButton);
	PROPERTY(floor_selector, OptionButton);
	PROPERTY(duration_slider, HSlider);
	PROPERTY(duration_label, Label);
	PROPERTY(schedule_panel, HBoxContainer);
	PROPERTY(day_spinner, SpinBox);
	PROPERTY(hour_spinner, SpinBox);
	PROPERTY(schedule_button, Button);
	PROPERTY(worm_floor_selector, OptionButton);
	PROPERTY(cyber_attack_selector, OptionButton);
	PROPERTY(device_address_input, LineEdit);
	PROPERTY(user_type_selector, OptionButton);
	PROPERTY(user_socket_selector, OptionButton);
	PROPERTY(user_count_spinner, SpinBox);
	PROPERTY(user_place_button, Button);
	PROPERTY(user_accept_button, Button);
	PROPERTY(user_sub_viewport, SubViewport);
	PROPERTY(user_options_packed, PackedScene);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void Testlab::launch() { this->voidcall("launch"); }
inline void Testlab::minimize() { this->voidcall("minimize"); }
inline void Testlab::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Testlab::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Testlab::get_main_pane() { return this->operator()("get_main_pane"); }

#endif
