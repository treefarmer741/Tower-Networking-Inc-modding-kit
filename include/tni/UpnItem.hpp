#ifndef TNI_API_HEADER_UPNITEM
#define TNI_API_HEADER_UPNITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UpnItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr UpnItem(PanelContainer base) : PanelContainer{base} {}
	constexpr UpnItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr UpnItem(Object obj) : UpnItem{obj.address()} {}
	UpnItem(Variant variant) : UpnItem{variant.as_object().address()} {}


	PROPERTY(text_value, String);

};



#endif
