#ifndef TNI_API_HEADER_PLUGLABEL
#define TNI_API_HEADER_PLUGLABEL
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct PlugLabel : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr PlugLabel(PanelContainer base) : PanelContainer{base} {}
	constexpr PlugLabel(uint64_t addr) : PanelContainer{addr} {}
	constexpr PlugLabel(Object obj) : PlugLabel{obj.address()} {}
	PlugLabel(Variant variant) : PlugLabel{variant.as_object().address()} {}


	PROPERTY(label, Label);

};



#endif
