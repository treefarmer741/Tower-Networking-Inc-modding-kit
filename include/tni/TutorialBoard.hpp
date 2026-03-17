#ifndef TNI_API_HEADER_TUTORIALBOARD
#define TNI_API_HEADER_TUTORIALBOARD
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TutorialBoard : public Control {
	using Control::Control;

	constexpr TutorialBoard(Control base) : Control{base} {}
	constexpr TutorialBoard(uint64_t addr) : Control{addr} {}
	constexpr TutorialBoard(Object obj) : TutorialBoard{obj.address()} {}
	TutorialBoard(Variant variant) : TutorialBoard{variant.as_object().address()} {}

	static constexpr int64_t LEFT_HIDE_SUBVAL = 30;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(s_tutorial_item_container, Variant);
	PROPERTY(tutorial_item_container, Variant);
	PROPERTY(main_button, Variant);
	PROPERTY(quick_reference_container, Variant);
	PROPERTY(quick_reference_minimize_button, Variant);
	PROPERTY(complete_guide_container, Variant);
	PROPERTY(complete_guide_minimize_button, Variant);
	PROPERTY(tutorial_item_scn, PackedScene);
	PROPERTY(s_tutorial_item_scn, PackedScene);
	PROPERTY(max_tutorial_items_count, int64_t);
	PROPERTY(last_tutorial_name, String);
	PROPERTY(current_tutorial_name, String);
	PROPERTY(tutorial_items, Variant);
	PROPERTY(s_tutorial_items, Variant);
	PROPERTY(s_scroll_container_max_scroll_length, Variant);
	PROPERTY(s_scrollbar, Variant);
	PROPERTY(twn, Tween);

	inline void handle_scrollbar_changed();
	inline void cleanup();
	inline void refresh();
	inline void refresh_items_status_by_action(String step);
	inline void register_item(Variant title, Variant des, Variant step, Variant fulfill);
	inline void pull_right();
	inline void pull_left();
};


inline void TutorialBoard::handle_scrollbar_changed() { voidcall("handle_scrollbar_changed"); }
inline void TutorialBoard::cleanup() { voidcall("cleanup"); }
inline void TutorialBoard::refresh() { voidcall("refresh"); }
inline void TutorialBoard::refresh_items_status_by_action(String step) { voidcall("refresh_items_status_by_action", step); }
inline void TutorialBoard::register_item(Variant title, Variant des, Variant step, Variant fulfill) { voidcall("register_item", title, des, step, fulfill); }
inline void TutorialBoard::pull_right() { voidcall("pull_right"); }
inline void TutorialBoard::pull_left() { voidcall("pull_left"); }

#endif
