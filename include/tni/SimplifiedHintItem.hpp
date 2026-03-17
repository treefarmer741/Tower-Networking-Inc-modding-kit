#ifndef TNI_API_HEADER_SIMPLIFIEDHINTITEM
#define TNI_API_HEADER_SIMPLIFIEDHINTITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimplifiedHintItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr SimplifiedHintItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr SimplifiedHintItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr SimplifiedHintItem(Object obj) : SimplifiedHintItem{obj.address()} {}
	SimplifiedHintItem(Variant variant) : SimplifiedHintItem{variant.as_object().address()} {}


	PROPERTY(description_label, RichTextLabel);
	PROPERTY(description, String);
	PROPERTY(hint_name, String);
	PROPERTY(fulfill, Variant);

};



#endif
