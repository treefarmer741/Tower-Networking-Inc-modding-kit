#ifndef TNI_API_HEADER_WHITEBOARDICON
#define TNI_API_HEADER_WHITEBOARDICON
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct WhiteboardIcon : public Control {
	using Control::Control;

	constexpr WhiteboardIcon(Control base) : Control{base} {}
	constexpr WhiteboardIcon(uint64_t addr) : Control{addr} {}
	constexpr WhiteboardIcon(Object obj) : WhiteboardIcon{obj.address()} {}
	WhiteboardIcon(Variant variant) : WhiteboardIcon{variant.as_object().address()} {}


	PROPERTY(icon_type, String);
	PROPERTY(icon_display_size, Variant);
	PROPERTY(label_text, String);

	inline void setup(String type, Texture2D tex, Node canvas);
	inline void set_highlighted(bool on);
	inline void set_label(String text);
};


inline void WhiteboardIcon::setup(String type, Texture2D tex, Node canvas) { this->voidcall("setup", type, tex, canvas); }
inline void WhiteboardIcon::set_highlighted(bool on) { this->voidcall("set_highlighted", on); }
inline void WhiteboardIcon::set_label(String text) { this->voidcall("set_label", text); }

#endif
