#ifndef TNI_API_HEADER_BHVITEM
#define TNI_API_HEADER_BHVITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct BhvItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr BhvItem(PanelContainer base) : PanelContainer{base} {}
	constexpr BhvItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr BhvItem(Object obj) : BhvItem{obj.address()} {}
	BhvItem(Variant variant) : BhvItem{variant.as_object().address()} {}


	PROPERTY(bh_info_d, Variant);

};



#endif
