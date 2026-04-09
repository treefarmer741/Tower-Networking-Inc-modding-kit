#ifndef TNI_API_HEADER_AUTOGRAPHELEMENT
#define TNI_API_HEADER_AUTOGRAPHELEMENT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct AutographElement : public Control {
	using Control::Control;

	constexpr AutographElement(Control base) : Control{base} {}
	constexpr AutographElement(uint64_t addr) : Control{addr} {}
	constexpr AutographElement(Object obj) : AutographElement{obj.address()} {}
	AutographElement(Variant variant) : AutographElement{variant.as_object().address()} {}


	PROPERTY(texture_rect, TextureRect);
	PROPERTY(main_label, Label);
	PROPERTY(sub_label, Label);
	PROPERTY(auxctn, Container);
	PROPERTY(auxlb1, Label);

};



#endif
