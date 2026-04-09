#ifndef TNI_API_HEADER_MINIANNOUNCEMENT
#define TNI_API_HEADER_MINIANNOUNCEMENT
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MiniAnnouncement : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr MiniAnnouncement(PanelContainer base) : PanelContainer{base} {}
	constexpr MiniAnnouncement(uint64_t addr) : PanelContainer{addr} {}
	constexpr MiniAnnouncement(Object obj) : MiniAnnouncement{obj.address()} {}
	MiniAnnouncement(Variant variant) : MiniAnnouncement{variant.as_object().address()} {}



};



#endif
