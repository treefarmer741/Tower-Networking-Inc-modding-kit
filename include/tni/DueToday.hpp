#ifndef TNI_API_HEADER_DUETODAY
#define TNI_API_HEADER_DUETODAY
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DueToday : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr DueToday(ScrollContainer base) : ScrollContainer{base} {}
	constexpr DueToday(uint64_t addr) : ScrollContainer{addr} {}
	constexpr DueToday(Object obj) : DueToday{obj.address()} {}
	DueToday(Variant variant) : DueToday{variant.as_object().address()} {}

	PROPERTY(lri, Variant);  // Const value type was not supported.


};



#endif
