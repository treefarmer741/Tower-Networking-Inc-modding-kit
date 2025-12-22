#ifndef TNI_API_HEADER_PLAYMENU
#define TNI_API_HEADER_PLAYMENU
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PlayMenu : public Control {
	using Control::Control;

	constexpr PlayMenu(Control base) : Control{base} {}
	constexpr PlayMenu(uint64_t addr) : Control{addr} {}
	constexpr PlayMenu(Object obj) : PlayMenu{obj.address()} {}
	PlayMenu(Variant variant) : PlayMenu{variant.as_object().address()} {}

	PROPERTY(default_description_scn, Variant);  // Const value type was not supported.

	PROPERTY(game_scenarios, Variant);
	PROPERTY(hostbtn, Button);
	PROPERTY(igninp, TextEdit);
	PROPERTY(game_type_tab, TabContainer);
	PROPERTY(tutorial_itemlist, ItemList);
	PROPERTY(scenario_itemlist, ItemList);
	PROPERTY(testing_itemlist, ItemList);
	PROPERTY(sdcontain, Container);
	PROPERTY(gameoptm, Container);
	PROPERTY(gocontain, Container);
	PROPERTY(joinctl, Container);
	PROPERTY(join_inp, TextEdit);
	PROPERTY(rngseed_in, TextEdit);
	PROPERTY(diffpreset_in, OptionButton);
	PROPERTY(advgotogbtn, Button);
	PROPERTY(achlbl, Label);
	PROPERTY(last_selected_itemlist, ItemList);
	PROPERTY(current_selected_scenario, String);

	inline void show_lan_joining_options();
	inline void hide_lan_joining_options();
	inline void reroll_seed();
	inline void diffsel(int64_t index, bool update_last_sel);
};


inline void PlayMenu::show_lan_joining_options() { voidcall("show_lan_joining_options"); }
inline void PlayMenu::hide_lan_joining_options() { voidcall("hide_lan_joining_options"); }
inline void PlayMenu::reroll_seed() { voidcall("reroll_seed"); }
inline void PlayMenu::diffsel(int64_t index, bool update_last_sel) { voidcall("diffsel", index, update_last_sel); }

#endif
