#ifndef TNI_API_HEADER_MSGLISTITEM
#define TNI_API_HEADER_MSGLISTITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MsgListItem : public Container {
	using Container::Container;

	constexpr MsgListItem(Container base) : Container{base} {}
	constexpr MsgListItem(uint64_t addr) : Container{addr} {}
	constexpr MsgListItem(Object obj) : MsgListItem{obj.address()} {}
	MsgListItem(Variant variant) : MsgListItem{variant.as_object().address()} {}


	PROPERTY(msg, GameMessage);
	PROPERTY(is_read, bool);
	PROPERTY(labels, Variant);
	PROPERTY(msg_label_map, Variant);
	PROPERTY(read_text, Texture2D);
	PROPERTY(unread_text, Texture2D);

	inline void set_checkbox(bool checked);
	inline bool is_checkbox_checked();
	inline void refresh_badges();
};

#include "GameMessage.hpp"

inline void MsgListItem::set_checkbox(bool checked) { this->voidcall("set_checkbox", checked); }
inline bool MsgListItem::is_checkbox_checked() { return this->operator()("is_checkbox_checked"); }
inline void MsgListItem::refresh_badges() { this->voidcall("refresh_badges"); }

#endif
