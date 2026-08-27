#ifndef TNI_API_HEADER_THESECRETARIATTABTITLEITEM
#define TNI_API_HEADER_THESECRETARIATTABTITLEITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ThesecretariatTabTitleItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr ThesecretariatTabTitleItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr ThesecretariatTabTitleItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr ThesecretariatTabTitleItem(Object obj) : ThesecretariatTabTitleItem{obj.address()} {}
	ThesecretariatTabTitleItem(Variant variant) : ThesecretariatTabTitleItem{variant.as_object().address()} {}


	PROPERTY(text, Variant);

};



#endif
