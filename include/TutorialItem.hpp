#ifndef TNI_API_HEADER_TUTORIALITEM
#define TNI_API_HEADER_TUTORIALITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TutorialItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr TutorialItem(PanelContainer base) : PanelContainer{base} {}
	constexpr TutorialItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr TutorialItem(Object obj) : TutorialItem{obj.address()} {}
	TutorialItem(Variant variant) : TutorialItem{variant.as_object().address()} {}


	PROPERTY(item_title, Variant);
	PROPERTY(item_description, Variant);

};



#endif
