#ifndef TNI_API_HEADER_CREDITSPAGE
#define TNI_API_HEADER_CREDITSPAGE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct CreditsPage : public ScrollContainer {
	using ScrollContainer::ScrollContainer;

	constexpr CreditsPage(ScrollContainer base) : ScrollContainer{base} {}
	constexpr CreditsPage(uint64_t addr) : ScrollContainer{addr} {}
	constexpr CreditsPage(Object obj) : CreditsPage{obj.address()} {}
	CreditsPage(Variant variant) : CreditsPage{variant.as_object().address()} {}



};



#endif
