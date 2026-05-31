#ifndef TNI_API_HEADER_FEEDBACK
#define TNI_API_HEADER_FEEDBACK
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Feedback : public Control {
	using Control::Control;

	constexpr Feedback(Control base) : Control{base} {}
	constexpr Feedback(uint64_t addr) : Control{addr} {}
	constexpr Feedback(Object obj) : Feedback{obj.address()} {}
	Feedback(Variant variant) : Feedback{variant.as_object().address()} {}



	inline void fade_in();
	inline void fade_out();
	inline void show_loading_form();
	inline void hide_loading_form();
	inline void show_response_form(Variant response_code);
};


inline void Feedback::fade_in() { this->voidcall("fade_in"); }
inline void Feedback::fade_out() { this->voidcall("fade_out"); }
inline void Feedback::show_loading_form() { this->voidcall("show_loading_form"); }
inline void Feedback::hide_loading_form() { this->voidcall("hide_loading_form"); }
inline void Feedback::show_response_form(Variant response_code) { this->voidcall("show_response_form", response_code); }

#endif
