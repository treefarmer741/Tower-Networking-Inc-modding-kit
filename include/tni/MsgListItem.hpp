#ifndef TNI_API_HEADER_MSGLISTITEM
#define TNI_API_HEADER_MSGLISTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MsgListItem : public Container {
	using Container::Container;

	constexpr MsgListItem(Container base) : Container{base} {}
	constexpr MsgListItem(uint64_t addr) : Container{addr} {}
	constexpr MsgListItem(Object obj) : MsgListItem{obj.address()} {}
	MsgListItem(Variant variant) : MsgListItem{variant.as_object().address()} {}


	PROPERTY(msg, GameMessage);
	PROPERTY(is_read, bool);
	PROPERTY(read_text, Texture2D);
	PROPERTY(unread_text, Texture2D);

};

#include "GameMessage.hpp"


#endif
