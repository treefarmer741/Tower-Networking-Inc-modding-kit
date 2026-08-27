#ifndef TNI_API_HEADER_USERLIST
#define TNI_API_HEADER_USERLIST
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserList : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr UserList(VBoxContainer base) : VBoxContainer{base} {}
	constexpr UserList(uint64_t addr) : VBoxContainer{addr} {}
	constexpr UserList(Object obj) : UserList{obj.address()} {}
	UserList(Variant variant) : UserList{variant.as_object().address()} {}


	PROPERTY(user_card_scene, PackedScene);
	PROPERTY(filter_edit, LineEdit);
	PROPERTY(cards_container, VBoxContainer);

	inline void populate(Variant users);
};


inline void UserList::populate(Variant users) { this->voidcall("populate", users); }

#endif
