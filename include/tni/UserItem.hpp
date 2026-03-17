#ifndef TNI_API_HEADER_USERITEM
#define TNI_API_HEADER_USERITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr UserItem(PanelContainer base) : PanelContainer{base} {}
	constexpr UserItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr UserItem(Object obj) : UserItem{obj.address()} {}
	UserItem(Variant variant) : UserItem{variant.as_object().address()} {}

	PROPERTY(bhv_scn, Variant);  // Const value type was not supported.

	PROPERTY(info_d, Variant);

	inline void refresh_lock_state(bool hide_known_or_unlocked);
};


inline void UserItem::refresh_lock_state(bool hide_known_or_unlocked) { voidcall("refresh_lock_state", hide_known_or_unlocked); }

#endif
