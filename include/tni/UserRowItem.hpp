#ifndef TNI_API_HEADER_USERROWITEM
#define TNI_API_HEADER_USERROWITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserRowItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr UserRowItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr UserRowItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr UserRowItem(Object obj) : UserRowItem{obj.address()} {}
	UserRowItem(Variant variant) : UserRowItem{variant.as_object().address()} {}


	PROPERTY(user, User);

};

#include "User.hpp"


#endif
