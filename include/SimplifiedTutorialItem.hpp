#ifndef TNI_API_HEADER_SIMPLIFIEDTUTORIALITEM
#define TNI_API_HEADER_SIMPLIFIEDTUTORIALITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SimplifiedTutorialItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr SimplifiedTutorialItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr SimplifiedTutorialItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr SimplifiedTutorialItem(Object obj) : SimplifiedTutorialItem{obj.address()} {}
	SimplifiedTutorialItem(Variant variant) : SimplifiedTutorialItem{variant.as_object().address()} {}


	PROPERTY(item_description, Variant);
	PROPERTY(guide_name, Variant);
	PROPERTY(fulfill, Variant);

};



#endif
