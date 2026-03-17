#ifndef TNI_API_HEADER_ANNOUNCEMENTS
#define TNI_API_HEADER_ANNOUNCEMENTS
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Announcements : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr Announcements(PanelContainer base) : PanelContainer{base} {}
	constexpr Announcements(uint64_t addr) : PanelContainer{addr} {}
	constexpr Announcements(Object obj) : Announcements{obj.address()} {}
	Announcements(Variant variant) : Announcements{variant.as_object().address()} {}



};



#endif
