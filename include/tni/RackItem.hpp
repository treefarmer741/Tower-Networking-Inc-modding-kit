#ifndef TNI_API_HEADER_RACKITEM
#define TNI_API_HEADER_RACKITEM
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct RackItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr RackItem(PanelContainer base) : PanelContainer{base} {}
	constexpr RackItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr RackItem(Object obj) : RackItem{obj.address()} {}
	RackItem(Variant variant) : RackItem{variant.as_object().address()} {}

	enum struct Category : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		RACK_500R = 0,
		RACK_630R = 1,
		RACK_930R = 2,
		MISC = 3,
	};

	PROPERTY(rack_scn, PackedScene);
	PROPERTY(price, int64_t);
	PROPERTY(category, int64_t);
	PROPERTY(price_lb, Label);
	PROPERTY(txtrect, TextureRect);
	PROPERTY(button, Button);

};



#endif
