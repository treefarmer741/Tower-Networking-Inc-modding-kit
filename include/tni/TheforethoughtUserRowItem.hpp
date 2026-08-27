#ifndef TNI_API_HEADER_THEFORETHOUGHTUSERROWITEM
#define TNI_API_HEADER_THEFORETHOUGHTUSERROWITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct TheforethoughtUserRowItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr TheforethoughtUserRowItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr TheforethoughtUserRowItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr TheforethoughtUserRowItem(Object obj) : TheforethoughtUserRowItem{obj.address()} {}
	TheforethoughtUserRowItem(Variant variant) : TheforethoughtUserRowItem{variant.as_object().address()} {}


	PROPERTY(checkbox, CheckBox);
	PROPERTY(user, User);
	PROPERTY(count, int64_t);

};

#include "User.hpp"


#endif
