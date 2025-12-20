#ifndef TNI_API_HEADER_POCOSIAINGAMEMENU
#define TNI_API_HEADER_POCOSIAINGAMEMENU
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaInGameMenu : public Control {
	using Control::Control;

	constexpr PocosiaInGameMenu(Control base) : Control{base} {}
	constexpr PocosiaInGameMenu(uint64_t addr) : Control{addr} {}
	constexpr PocosiaInGameMenu(Object obj) : PocosiaInGameMenu{obj.address()} {}
	PocosiaInGameMenu(Variant variant) : PocosiaInGameMenu{variant.as_object().address()} {}


	PROPERTY(quit_to_desktop_button, Button);
	PROPERTY(quit_to_mainmenu_button, Button);
	PROPERTY(enabled, bool);

};



#endif
