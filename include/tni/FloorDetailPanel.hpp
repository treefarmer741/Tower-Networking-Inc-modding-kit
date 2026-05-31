#ifndef TNI_API_HEADER_FLOORDETAILPANEL
#define TNI_API_HEADER_FLOORDETAILPANEL
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct FloorDetailPanel : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr FloorDetailPanel(VBoxContainer base) : VBoxContainer{base} {}
	constexpr FloorDetailPanel(uint64_t addr) : VBoxContainer{addr} {}
	constexpr FloorDetailPanel(Object obj) : FloorDetailPanel{obj.address()} {}
	FloorDetailPanel(Variant variant) : FloorDetailPanel{variant.as_object().address()} {}


	PROPERTY(loc, Location);
	PROPERTY(exbutton, Button);
	PROPERTY(fllb, Label);
	PROPERTY(actdesc, RichTextLabel);
	PROPERTY(optbut, OptionButton);
	PROPERTY(msgbox, RichTextLabel);
	PROPERTY(netoutmodscn, PackedScene);

};

#include "Location.hpp"


#endif
