#ifndef TNI_API_HEADER_ATTACHMENTUSERCARD
#define TNI_API_HEADER_ATTACHMENTUSERCARD
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct AttachmentUserCard : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr AttachmentUserCard(PanelContainer base) : PanelContainer{base} {}
	constexpr AttachmentUserCard(uint64_t addr) : PanelContainer{addr} {}
	constexpr AttachmentUserCard(Object obj) : AttachmentUserCard{obj.address()} {}
	AttachmentUserCard(Variant variant) : AttachmentUserCard{variant.as_object().address()} {}


	PROPERTY(user_info, Variant);
	PROPERTY(title_lbl, Label);
	PROPERTY(icon_rect, TextureRect);
	PROPERTY(desc_lbl, RichTextLabel);
	PROPERTY(behaviors_box, VBoxContainer);
	PROPERTY(bhv_scn, PackedScene);

};



#endif
