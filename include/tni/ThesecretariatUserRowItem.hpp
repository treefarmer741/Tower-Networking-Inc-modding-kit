#ifndef TNI_API_HEADER_THESECRETARIATUSERROWITEM
#define TNI_API_HEADER_THESECRETARIATUSERROWITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ThesecretariatUserRowItem : public HBoxContainer {
	using HBoxContainer::HBoxContainer;

	constexpr ThesecretariatUserRowItem(HBoxContainer base) : HBoxContainer{base} {}
	constexpr ThesecretariatUserRowItem(uint64_t addr) : HBoxContainer{addr} {}
	constexpr ThesecretariatUserRowItem(Object obj) : ThesecretariatUserRowItem{obj.address()} {}
	ThesecretariatUserRowItem(Variant variant) : ThesecretariatUserRowItem{variant.as_object().address()} {}


	PROPERTY(user, User);

};

#include "User.hpp"


#endif
