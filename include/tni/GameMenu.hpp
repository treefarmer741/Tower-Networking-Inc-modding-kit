#ifndef TNI_API_HEADER_GAMEMENU
#define TNI_API_HEADER_GAMEMENU
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameMenu : public Control {
	using Control::Control;

	constexpr GameMenu(Control base) : Control{base} {}
	constexpr GameMenu(uint64_t addr) : Control{addr} {}
	constexpr GameMenu(Object obj) : GameMenu{obj.address()} {}
	GameMenu(Variant variant) : GameMenu{variant.as_object().address()} {}


	PROPERTY(main_title_label, Label);
	PROPERTY(save_menu, Container);
	PROPERTY(base_menu, Container);
	PROPERTY(steam_lobby_control, Container);
	PROPERTY(steam_public_lobby_button, Button);
	PROPERTY(steam_lobby_status1, Label);
	PROPERTY(steam_lobby_status2, Button);
	PROPERTY(ingame_settings_menu, Container);

};



#endif
