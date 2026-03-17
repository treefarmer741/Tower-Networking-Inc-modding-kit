#ifndef TNI_API_HEADER_FLOORLISTITEM
#define TNI_API_HEADER_FLOORLISTITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FloorListItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr FloorListItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr FloorListItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr FloorListItem(Object obj) : FloorListItem{obj.address()} {}
	FloorListItem(Variant variant) : FloorListItem{variant.as_object().address()} {}


	PROPERTY(loc, Location);
	PROPERTY(mng_btn, Button);
	PROPERTY(satiety_lbl, Label);
	PROPERTY(lowest_lbl, Label);

};

#include "Location.hpp"


#endif
