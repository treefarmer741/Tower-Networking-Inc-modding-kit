#ifndef TNI_API_HEADER_PROPOSALITEM
#define TNI_API_HEADER_PROPOSALITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ProposalItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr ProposalItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr ProposalItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr ProposalItem(Object obj) : ProposalItem{obj.address()} {}
	ProposalItem(Variant variant) : ProposalItem{variant.as_object().address()} {}


	PROPERTY(hb, Container);
	PROPERTY(lbl1, Label);
	PROPERTY(lbl2, Label);
	PROPERTY(lbl3, Label);
	PROPERTY(fst, Label);
	PROPERTY(rtl, RichTextLabel);
	PROPERTY(trect, TextureRect);
	PROPERTY(btn, Button);
	PROPERTY(btn2, Button);
	PROPERTY(proposal, PropMod);

};

#include "PropMod.hpp"


#endif
