#ifndef TNI_API_HEADER_SETTINGSMENU
#define TNI_API_HEADER_SETTINGSMENU
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SettingsMenu : public Control {
	using Control::Control;

	constexpr SettingsMenu(Control base) : Control{base} {}
	constexpr SettingsMenu(uint64_t addr) : Control{addr} {}
	constexpr SettingsMenu(Object obj) : SettingsMenu{obj.address()} {}
	SettingsMenu(Variant variant) : SettingsMenu{variant.as_object().address()} {}

	PROPERTY(locale_lang_map, Dictionary);  // enum of non-integer type

	PROPERTY(game_settings, Container);
	PROPERTY(audio_settings, Container);
	PROPERTY(graphic_settings, Container);
	PROPERTY(is_in_game, bool);

	inline Variant get_loaded_langs();
	inline String get_locale_from_lang(String langname);
};


inline Variant SettingsMenu::get_loaded_langs() { return operator()("get_loaded_langs"); }
inline String SettingsMenu::get_locale_from_lang(String langname) { return operator()("get_locale_from_lang", langname); }

#endif
