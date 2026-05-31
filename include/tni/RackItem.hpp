#ifndef TNI_API_HEADER_RACKITEM
#define TNI_API_HEADER_RACKITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct RackItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr RackItem(PanelContainer base) : PanelContainer{base} {}
	constexpr RackItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr RackItem(Object obj) : RackItem{obj.address()} {}
	RackItem(Variant variant) : RackItem{variant.as_object().address()} {}


	PROPERTY(rack_scn, PackedScene);
	PROPERTY(price, int64_t);
	PROPERTY(price_lb, Label);
	PROPERTY(txtrect, TextureRect);
	PROPERTY(button, Button);

};



#endif
