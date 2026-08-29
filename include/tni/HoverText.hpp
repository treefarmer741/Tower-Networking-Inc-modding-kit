#ifndef TNI_API_HEADER_HOVERTEXT
#define TNI_API_HEADER_HOVERTEXT
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct HoverText : public RichTextLabel {
	using RichTextLabel::RichTextLabel;

	constexpr HoverText(RichTextLabel base) : RichTextLabel{base} {}
	constexpr HoverText(uint64_t addr) : RichTextLabel{addr} {}
	constexpr HoverText(Object obj) : HoverText{obj.address()} {}
	HoverText(Variant variant) : HoverText{variant.as_object().address()} {}


	PROPERTY(hover_hint_text, String);

};



#endif
