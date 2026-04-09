#ifndef TNI_API_HEADER_SAVEMENU
#define TNI_API_HEADER_SAVEMENU
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
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
	PROPERTY(schooser, ItemList);
	PROPERTY(current_selected_save, String);
	PROPERTY(current_selected_savegroup, String);
	PROPERTY(existing_saves, Variant);

	inline void populate_group_saves(String group_name);
	inline void enum_save_groups(String contain_s);
	inline void refresh_ui(String contain_s);
};

#include "SaveController.hpp"

inline void SaveMenu::populate_group_saves(String group_name) { this->voidcall("populate_group_saves", group_name); }
inline void SaveMenu::enum_save_groups(String contain_s) { this->voidcall("enum_save_groups", contain_s); }
inline void SaveMenu::refresh_ui(String contain_s) { this->voidcall("refresh_ui", contain_s); }

#endif
