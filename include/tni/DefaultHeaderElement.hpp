#ifndef TNI_API_HEADER_DEFAULTHEADERELEMENT
#define TNI_API_HEADER_DEFAULTHEADERELEMENT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DefaultHeaderElement : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr DefaultHeaderElement(PanelContainer base) : PanelContainer{base} {}
	constexpr DefaultHeaderElement(uint64_t addr) : PanelContainer{addr} {}
	constexpr DefaultHeaderElement(Object obj) : DefaultHeaderElement{obj.address()} {}
	DefaultHeaderElement(Variant variant) : DefaultHeaderElement{variant.as_object().address()} {}


	PROPERTY(main_label, Label);
	PROPERTY(row_id, Variant);

};



#endif
