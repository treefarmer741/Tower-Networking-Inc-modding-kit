#ifndef TNI_API_HEADER_MINIMALGUIDEWINDOW
#define TNI_API_HEADER_MINIMALGUIDEWINDOW
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MinimalGuideWindow : public Control {
	using Control::Control;

	constexpr MinimalGuideWindow(Control base) : Control{base} {}
	constexpr MinimalGuideWindow(uint64_t addr) : Control{addr} {}
	constexpr MinimalGuideWindow(Object obj) : MinimalGuideWindow{obj.address()} {}
	MinimalGuideWindow(Variant variant) : MinimalGuideWindow{variant.as_object().address()} {}


	PROPERTY(main_rtlabel, RichTextLabel);
	PROPERTY(title_label, Label);
	PROPERTY(close_button, TextureButton);
	PROPERTY(back_button, TextureButton);
	PROPERTY(dialog_text, String);
	PROPERTY(title, String);
	PROPERTY(simplified_step, String);
	PROPERTY(clicked_tutorial, Variant);

	inline void update_tutorial_details();
	inline void update_tutorial_status();
};


inline void MinimalGuideWindow::update_tutorial_details() { voidcall("update_tutorial_details"); }
inline void MinimalGuideWindow::update_tutorial_status() { voidcall("update_tutorial_status"); }

#endif
