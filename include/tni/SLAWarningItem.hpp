#ifndef TNI_API_HEADER_SLAWARNINGITEM
#define TNI_API_HEADER_SLAWARNINGITEM
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct SLAWarningItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr SLAWarningItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr SLAWarningItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr SLAWarningItem(Object obj) : SLAWarningItem{obj.address()} {}
	SLAWarningItem(Variant variant) : SLAWarningItem{variant.as_object().address()} {}


	PROPERTY(user, LogicControllerUser);
	PROPERTY(usn_btn, Button);
	PROPERTY(floor_lbl, Label);
	PROPERTY(secs_lbl, Label);
	PROPERTY(reason_row, HBoxContainer);
	PROPERTY(reason_lbl, RichTextLabel);
	PROPERTY(sep, HSeparator);

	inline void set_user(const LogicControllerUser& u);
};

#include "LogicControllerUser.hpp"

inline void SLAWarningItem::set_user(const LogicControllerUser& u) { this->voidcall("set_user", Object(reinterpret_cast<const Object*>(&u)->address())); }

#endif
