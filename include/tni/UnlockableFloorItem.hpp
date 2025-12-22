#ifndef TNI_API_HEADER_UNLOCKABLEFLOORITEM
#define TNI_API_HEADER_UNLOCKABLEFLOORITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UnlockableFloorItem : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr UnlockableFloorItem(PanelContainer base) : PanelContainer{base} {}
	constexpr UnlockableFloorItem(uint64_t addr) : PanelContainer{addr} {}
	constexpr UnlockableFloorItem(Object obj) : UnlockableFloorItem{obj.address()} {}
	UnlockableFloorItem(Variant variant) : UnlockableFloorItem{variant.as_object().address()} {}

	PROPERTY(upn_scn, Variant);  // Const value type was not supported.

	PROPERTY(info_d, Variant);

	inline void refresh_lock_state(bool hide_known_or_unlocked);
};


inline void UnlockableFloorItem::refresh_lock_state(bool hide_known_or_unlocked) { voidcall("refresh_lock_state", hide_known_or_unlocked); }

#endif
