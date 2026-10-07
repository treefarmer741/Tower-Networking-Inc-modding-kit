#ifndef TNI_API_HEADER_TENABOLTHELPDESK
#define TNI_API_HEADER_TENABOLTHELPDESK
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TenaboltHelpdesk : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr TenaboltHelpdesk(PanelContainer base) : PanelContainer{base} {}
	constexpr TenaboltHelpdesk(uint64_t addr) : PanelContainer{addr} {}
	constexpr TenaboltHelpdesk(Object obj) : TenaboltHelpdesk{obj.address()} {}
	TenaboltHelpdesk(Variant variant) : TenaboltHelpdesk{variant.as_object().address()} {}

	static constexpr int64_t MAX_WORDS = 50;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(chat, Control);
	PROPERTY(complaint_button, Button);
	PROPERTY(complaint_box, TextEdit);
	PROPERTY(submit_button, Button);
	PROPERTY(complaint, Control);
	PROPERTY(complaint_label, Label);
	PROPERTY(reply, Control);

};



#endif
