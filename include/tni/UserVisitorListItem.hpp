#ifndef TNI_API_HEADER_USERVISITORLISTITEM
#define TNI_API_HEADER_USERVISITORLISTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserVisitorListItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr UserVisitorListItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr UserVisitorListItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr UserVisitorListItem(Object obj) : UserVisitorListItem{obj.address()} {}
	UserVisitorListItem(Variant variant) : UserVisitorListItem{variant.as_object().address()} {}


	PROPERTY(visitor_group_name, String);
	PROPERTY(unique_visitor_count, int64_t);
	PROPERTY(day_stats, int64_t);

};



#endif
