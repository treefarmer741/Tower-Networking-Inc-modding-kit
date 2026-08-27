#ifndef TNI_API_HEADER_PROPOSALDIRECTORYITEM
#define TNI_API_HEADER_PROPOSALDIRECTORYITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ProposalDirectoryItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr ProposalDirectoryItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr ProposalDirectoryItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr ProposalDirectoryItem(Object obj) : ProposalDirectoryItem{obj.address()} {}
	ProposalDirectoryItem(Variant variant) : ProposalDirectoryItem{variant.as_object().address()} {}


	PROPERTY(name_lbl, Label);
	PROPERTY(icon_tr, TextureRect);
	PROPERTY(lore_lbl, Label);
	PROPERTY(status_lbl, Label);
	PROPERTY(cond_rtl, RichTextLabel);
	PROPERTY(cond_sep, HSeparator);
	PROPERTY(desc_rtl, RichTextLabel);
	PROPERTY(proposal, PropMod);

};

#include "PropMod.hpp"


#endif
