#ifndef TNI_API_HEADER_WIKIENTRYITEM
#define TNI_API_HEADER_WIKIENTRYITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WikiEntryItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr WikiEntryItem(PanelContainer base) : PanelContainer{base} {}
	constexpr WikiEntryItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr WikiEntryItem(Object obj) : WikiEntryItem{obj.address()} {}
	WikiEntryItem(Variant variant) : WikiEntryItem{variant.as_object().address()} {}


	PROPERTY(wiki_entry_packed_scene, PackedScene);
	PROPERTY(wiki_display, Container);
	PROPERTY(wiki_entry, WikiEntry);
	PROPERTY(main_scroll, ScrollContainer);
	PROPERTY(keywords, Variant);

	inline void navigate_to();
};

#include "WikiEntry.hpp"

inline void WikiEntryItem::navigate_to() { voidcall("navigate_to"); }

#endif
