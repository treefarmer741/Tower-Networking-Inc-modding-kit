#ifndef TNI_API_HEADER_USERBUILDQUEUEITEM
#define TNI_API_HEADER_USERBUILDQUEUEITEM
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserBuildQueueItem : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr UserBuildQueueItem(VBoxContainer base) : VBoxContainer{base} {}
	constexpr UserBuildQueueItem(uint64_t addr) : VBoxContainer{addr} {}
	constexpr UserBuildQueueItem(Object obj) : UserBuildQueueItem{obj.address()} {}
	UserBuildQueueItem(Variant variant) : UserBuildQueueItem{variant.as_object().address()} {}

	PROPERTY(user_row_item_scene, Variant);  // Const value type was not supported.

	PROPERTY(uq_ref, Variant);
	PROPERTY(user_row_container, Container);
	PROPERTY(group_name_lbl, Label);
	PROPERTY(final_date_lbl, Label);
	PROPERTY(no_user_lbl, Label);
	PROPERTY(extra_descript, RichTextLabel);
	PROPERTY(upfront_lbl, Label);
	PROPERTY(upfront_ct, Container);
	PROPERTY(sla_lbl, Label);
	PROPERTY(outlet_spacing, double);
	PROPERTY(user_cache, Variant);
	PROPERTY(user_scene_paths, Variant);
	PROPERTY(final_date, int64_t);
	PROPERTY(uq_qid, int64_t);
	PROPERTY(curr_ghosts, Variant);
	PROPERTY(placed_ghost, FixtureOutlet);
	PROPERTY(placement_panel, PanelContainer);
	PROPERTY(select_all_checkbox, CheckBox);
	PROPERTY(socketsel, OptionButton);
	PROPERTY(placebutton, Button);
	PROPERTY(cfmbutton, Button);
	PROPERTY(sviewport, SubViewport);
	PROPERTY(placeable_outlets, Variant);

	inline void start_breach_display(Timer breach_timer);
	inline Variant get_user_ref_from_path(String rpath);
	inline void cleanup();
	inline void minimize();
};

#include "FixtureOutlet.hpp"

inline void UserBuildQueueItem::start_breach_display(Timer breach_timer) { this->voidcall("start_breach_display", breach_timer); }
inline Variant UserBuildQueueItem::get_user_ref_from_path(String rpath) { return this->operator()("get_user_ref_from_path", rpath); }
inline void UserBuildQueueItem::cleanup() { this->voidcall("cleanup"); }
inline void UserBuildQueueItem::minimize() { this->voidcall("minimize"); }

#endif
