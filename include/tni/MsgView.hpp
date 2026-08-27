#ifndef TNI_API_HEADER_MSGVIEW
#define TNI_API_HEADER_MSGVIEW
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MsgView : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr MsgView(VBoxContainer base) : VBoxContainer{base} {}
	constexpr MsgView(uint64_t addr) : VBoxContainer{addr} {}
	constexpr MsgView(Object obj) : MsgView{obj.address()} {}
	MsgView(Variant variant) : MsgView{variant.as_object().address()} {}


	PROPERTY(msg, GameMessage);
	PROPERTY(labels, Variant);
	PROPERTY(msg_label_map, Variant);

};

#include "GameMessage.hpp"


#endif
