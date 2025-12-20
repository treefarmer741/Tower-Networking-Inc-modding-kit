#ifndef TNI_API_HEADER_USERBEHAVIOURLISTITEM
#define TNI_API_HEADER_USERBEHAVIOURLISTITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserBehaviourListItem : public Container {
	using Container::Container;

	constexpr UserBehaviourListItem(Container base) : Container{base} {}
	constexpr UserBehaviourListItem(uint64_t addr) : Container{addr} {}
	constexpr UserBehaviourListItem(Object obj) : UserBehaviourListItem{obj.address()} {}
	UserBehaviourListItem(Variant variant) : UserBehaviourListItem{variant.as_object().address()} {}


	PROPERTY(u, LogicControllerUser);
	PROPERTY(p, UserTraversal);
	PROPERTY(histrtf, RichTextLabel);
	PROPERTY(sat2lbl, Label);
	PROPERTY(twlb, Label);
	PROPERTY(trv_container, Container);
	PROPERTY(svbox, Label);
	PROPERTY(imptlb, Label);
	PROPERTY(produces_container, Container);
	PROPERTY(produces_lb, Label);
	PROPERTY(consumes_container, Container);
	PROPERTY(consumes_lb, Label);
	PROPERTY(theme_container, Container);
	PROPERTY(theme_lb, Label);

	inline String format_nbr(int64_t val, String zval);
};

#include "LogicControllerUser.hpp"
#include "UserTraversal.hpp"

inline String UserBehaviourListItem::format_nbr(int64_t val, String zval) { return operator()("format_nbr", val, zval); }

#endif
