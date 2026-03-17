#ifndef TNI_API_HEADER_CLIPBOARDITEM
#define TNI_API_HEADER_CLIPBOARDITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ClipboardItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr ClipboardItem(PanelContainer base) : PanelContainer{base} {}
	constexpr ClipboardItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr ClipboardItem(Object obj) : ClipboardItem{obj.address()} {}
	ClipboardItem(Variant variant) : ClipboardItem{variant.as_object().address()} {}

	PROPERTY(copier_item_scn, Variant);  // Const value type was not supported.

	PROPERTY(item, Variant);
	PROPERTY(schild, Container);
	PROPERTY(sparent, Container);
	PROPERTY(entity_label, Label);
	PROPERTY(hwaddr_label, Label);
	PROPERTY(nwaddr_label, Label);
	PROPERTY(copyhw_button, Button);
	PROPERTY(copynw_button, Button);

};



#endif
