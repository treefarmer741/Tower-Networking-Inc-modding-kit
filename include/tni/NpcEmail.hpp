#ifndef TNI_API_HEADER_NPCEMAIL
#define TNI_API_HEADER_NPCEMAIL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct NpcEmail : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr NpcEmail(PanelContainer base) : PanelContainer{base} {}
	constexpr NpcEmail(uint64_t addr) : PanelContainer{addr} {}
	constexpr NpcEmail(Object obj) : NpcEmail{obj.address()} {}
	NpcEmail(Variant variant) : NpcEmail{variant.as_object().address()} {}


	PROPERTY(text, String);

};



#endif
