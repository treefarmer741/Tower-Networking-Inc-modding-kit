#ifndef TNI_API_HEADER_UISCALESCROLL
#define TNI_API_HEADER_UISCALESCROLL
// Generated API for game version 0.13.4
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UiScaleScroll : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr UiScaleScroll(ScrollContainer base) : ScrollContainer{base} {}
	constexpr UiScaleScroll(uint64_t addr) : ScrollContainer{addr} {}
	constexpr UiScaleScroll(Object obj) : UiScaleScroll{obj.address()} {}
	UiScaleScroll(Variant variant) : UiScaleScroll{variant.as_object().address()} {}



};



#endif
