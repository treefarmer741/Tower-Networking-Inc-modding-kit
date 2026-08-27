#ifndef TNI_API_HEADER_USERSCHEDULEITEM
#define TNI_API_HEADER_USERSCHEDULEITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserScheduleItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr UserScheduleItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr UserScheduleItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr UserScheduleItem(Object obj) : UserScheduleItem{obj.address()} {}
	UserScheduleItem(Variant variant) : UserScheduleItem{variant.as_object().address()} {}

	PROPERTY(ACTIVE_COLOR, Variant);  // Const value type was not supported.
	PROPERTY(INACTIVE_COLOR, Variant);  // Const value type was not supported.


	inline void setup(String role_name, Variant users, String active_tag);
};


inline void UserScheduleItem::setup(String role_name, Variant users, String active_tag) { this->voidcall("setup", role_name, users, active_tag); }

#endif
