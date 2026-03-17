#ifndef TNI_API_HEADER_USERHOSTLISTITEM
#define TNI_API_HEADER_USERHOSTLISTITEM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UserHostListItem : public Container {
	using Container::Container;

	constexpr UserHostListItem(Container base) : Container{base} {}
	constexpr UserHostListItem(uint64_t addr) : Container{addr} {}
	constexpr UserHostListItem(Object obj) : UserHostListItem{obj.address()} {}
	UserHostListItem(Variant variant) : UserHostListItem{variant.as_object().address()} {}


	PROPERTY(p, UserHosting);
	PROPERTY(u, LogicControllerUser);
	PROPERTY(p_container, Container);
	PROPERTY(p_lbl, Label);
	PROPERTY(t_container, Container);
	PROPERTY(t_lbl, Label);
	PROPERTY(desc_rt, RichTextLabel);
	PROPERTY(main_lb, Label);
	PROPERTY(imp_lb, Label);
	PROPERTY(st_ct, Container);
	PROPERTY(st_lb, Label);

};

#include "UserHosting.hpp"
#include "LogicControllerUser.hpp"


#endif
