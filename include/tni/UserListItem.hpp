#ifndef TNI_API_HEADER_USERLISTITEM
#define TNI_API_HEADER_USERLISTITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserListItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr UserListItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr UserListItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr UserListItem(Object obj) : UserListItem{obj.address()} {}
	UserListItem(Variant variant) : UserListItem{variant.as_object().address()} {}

	PROPERTY(view_icon_texture, Variant);  // Const value type was not supported.
	PROPERTY(offline_icon_texture, Variant);  // Const value type was not supported.

	PROPERTY(is_header, bool);
	PROPERTY(user, User);
	PROPERTY(usn_lbl, Label);
	PROPERTY(usn_btn, Button);
	PROPERTY(satiety_lbl, Label);
	PROPERTY(lowest_lbl, Label);
	PROPERTY(txticon_button, TextureButton);

	inline void refresh_label();
};

#include "User.hpp"

inline void UserListItem::refresh_label() { voidcall("refresh_label"); }

#endif
