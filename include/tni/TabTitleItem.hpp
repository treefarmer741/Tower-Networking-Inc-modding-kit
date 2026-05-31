#ifndef TNI_API_HEADER_TABTITLEITEM
#define TNI_API_HEADER_TABTITLEITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TabTitleItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr TabTitleItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr TabTitleItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr TabTitleItem(Object obj) : TabTitleItem{obj.address()} {}
	TabTitleItem(Variant variant) : TabTitleItem{variant.as_object().address()} {}


	PROPERTY(text, Variant);

};



#endif
