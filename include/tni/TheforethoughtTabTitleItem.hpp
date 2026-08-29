#ifndef TNI_API_HEADER_THEFORETHOUGHTTABTITLEITEM
#define TNI_API_HEADER_THEFORETHOUGHTTABTITLEITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TheforethoughtTabTitleItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr TheforethoughtTabTitleItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr TheforethoughtTabTitleItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr TheforethoughtTabTitleItem(Object obj) : TheforethoughtTabTitleItem{obj.address()} {}
	TheforethoughtTabTitleItem(Variant variant) : TheforethoughtTabTitleItem{variant.as_object().address()} {}


	PROPERTY(text, Variant);

};



#endif
