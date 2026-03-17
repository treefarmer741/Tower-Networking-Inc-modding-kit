#ifndef TNI_API_HEADER_MSGVIEW
#define TNI_API_HEADER_MSGVIEW
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MsgView : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr MsgView(VBoxContainer base) : VBoxContainer{base} {}
	constexpr MsgView(uint64_t addr) : VBoxContainer{addr} {}
	constexpr MsgView(Object obj) : MsgView{obj.address()} {}
	MsgView(Variant variant) : MsgView{variant.as_object().address()} {}


	PROPERTY(msg, GameMessage);

};

#include "GameMessage.hpp"


#endif
