#ifndef TNI_API_HEADER_LEFTRIGHTTEXTITEM
#define TNI_API_HEADER_LEFTRIGHTTEXTITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LeftRightTextItem : public Container {
	using Container::Container;

	constexpr LeftRightTextItem(Container base) : Container{base} {}
	constexpr LeftRightTextItem(uint64_t addr) : Container{addr} {}
	constexpr LeftRightTextItem(Object obj) : LeftRightTextItem{obj.address()} {}
	LeftRightTextItem(Variant variant) : LeftRightTextItem{variant.as_object().address()} {}


	PROPERTY(rtlabel, Label);
	PROPERTY(left_text, String);
	PROPERTY(right_text, String);

};



#endif
