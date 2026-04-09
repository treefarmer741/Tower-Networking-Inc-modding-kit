#ifndef TNI_API_HEADER_COPIERITEM
#define TNI_API_HEADER_COPIERITEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct CopierItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr CopierItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr CopierItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr CopierItem(Object obj) : CopierItem{obj.address()} {}
	CopierItem(Variant variant) : CopierItem{variant.as_object().address()} {}


	PROPERTY(copy_button, Button);
	PROPERTY(value_label, Label);
	PROPERTY(value, Variant);
	PROPERTY(is_copied, bool);
	PROPERTY(copy_callback, Variant);

};



#endif
