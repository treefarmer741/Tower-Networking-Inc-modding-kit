#ifndef TNI_API_HEADER_USESPECITEM
#define TNI_API_HEADER_USESPECITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UseSpecItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr UseSpecItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr UseSpecItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr UseSpecItem(Object obj) : UseSpecItem{obj.address()} {}
	UseSpecItem(Variant variant) : UseSpecItem{variant.as_object().address()} {}


	PROPERTY(str_options, Variant);
	PROPERTY(option_button, OptionButton);
	PROPERTY(selected_use_spec, String);

};



#endif
