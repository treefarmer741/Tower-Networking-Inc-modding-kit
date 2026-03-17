#ifndef TNI_API_HEADER_SUMMARY
#define TNI_API_HEADER_SUMMARY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Summary : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr Summary(ScrollContainer base) : ScrollContainer{base} {}
	constexpr Summary(uint64_t addr) : ScrollContainer{addr} {}
	constexpr Summary(Object obj) : Summary{obj.address()} {}
	Summary(Variant variant) : Summary{variant.as_object().address()} {}

	PROPERTY(lri, Variant);  // Const value type was not supported.


};



#endif
