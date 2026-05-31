#ifndef TNI_API_HEADER_DEFAULTELEMENT
#define TNI_API_HEADER_DEFAULTELEMENT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DefaultElement : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr DefaultElement(PanelContainer base) : PanelContainer{base} {}
	constexpr DefaultElement(uint64_t addr) : PanelContainer{addr} {}
	constexpr DefaultElement(Object obj) : DefaultElement{obj.address()} {}
	DefaultElement(Variant variant) : DefaultElement{variant.as_object().address()} {}


	PROPERTY(texture_rect, TextureRect);
	PROPERTY(main_label, Label);
	PROPERTY(sub_label, Label);

};



#endif
