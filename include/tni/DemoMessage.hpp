#ifndef TNI_API_HEADER_DEMOMESSAGE
#define TNI_API_HEADER_DEMOMESSAGE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DemoMessage : public Window {
	using Window::Window;

	constexpr DemoMessage(Window base) : Window{base} {}
	constexpr DemoMessage(uint64_t addr) : Window{addr} {}
	constexpr DemoMessage(Object obj) : DemoMessage{obj.address()} {}
	DemoMessage(Variant variant) : DemoMessage{variant.as_object().address()} {}


	PROPERTY(tutorial_name, String);
	PROPERTY(tutorial_content, String);
	PROPERTY(demo_tutorial_scenarios, Variant);
	PROPERTY(demo_tutorial_sequence, Variant);

	inline void refresh_tutorial(Variant filename);
	inline Variant load_tutorial_txt(Variant filename);
};


inline void DemoMessage::refresh_tutorial(Variant filename) { voidcall("refresh_tutorial", filename); }
inline Variant DemoMessage::load_tutorial_txt(Variant filename) { return operator()("load_tutorial_txt", filename); }

#endif
