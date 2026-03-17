#ifndef TNI_API_HEADER_SAVEMENU
#define TNI_API_HEADER_SAVEMENU
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SaveMenu : public Container {
	using Container::Container;

	constexpr SaveMenu(Container base) : Container{base} {}
	constexpr SaveMenu(uint64_t addr) : Container{addr} {}
	constexpr SaveMenu(Object obj) : SaveMenu{obj.address()} {}
	SaveMenu(Variant variant) : SaveMenu{variant.as_object().address()} {}


	PROPERTY(is_in_game_menu, bool);
	PROPERTY(save_itemlist, ItemList);
	PROPERTY(load_controls, Container);
	PROPERTY(delete_button, Button);
	PROPERTY(save_controls, Container);
	PROPERTY(save_textin, TextEdit);
	PROPERTY(save_button, Button);
	PROPERTY(back_button, Button);
	PROPERTY(disp_label, Label);
	PROPERTY(scon, SaveController);
	PROPERTY(mphost_button, Button);
	PROPERTY(filter_textin, TextEdit);
	PROPERTY(current_selected_save, String);
	PROPERTY(existing_saves, Variant);

	inline void rescan_saves(String contain_s);
};

#include "SaveController.hpp"

inline void SaveMenu::rescan_saves(String contain_s) { voidcall("rescan_saves", contain_s); }

#endif
