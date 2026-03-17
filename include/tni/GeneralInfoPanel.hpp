#ifndef TNI_API_HEADER_GENERALINFOPANEL
#define TNI_API_HEADER_GENERALINFOPANEL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GeneralInfoPanel : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr GeneralInfoPanel(PanelContainer base) : PanelContainer{base} {}
	constexpr GeneralInfoPanel(uint64_t addr) : PanelContainer{addr} {}
	constexpr GeneralInfoPanel(Object obj) : GeneralInfoPanel{obj.address()} {}
	GeneralInfoPanel(Variant variant) : GeneralInfoPanel{variant.as_object().address()} {}


	PROPERTY(twn1, Tween);
	PROPERTY(title, String);
	PROPERTY(msg, String);

};



#endif
