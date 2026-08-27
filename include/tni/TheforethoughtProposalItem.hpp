#ifndef TNI_API_HEADER_THEFORETHOUGHTPROPOSALITEM
#define TNI_API_HEADER_THEFORETHOUGHTPROPOSALITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TheforethoughtProposalItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr TheforethoughtProposalItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr TheforethoughtProposalItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr TheforethoughtProposalItem(Object obj) : TheforethoughtProposalItem{obj.address()} {}
	TheforethoughtProposalItem(Variant variant) : TheforethoughtProposalItem{variant.as_object().address()} {}


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
