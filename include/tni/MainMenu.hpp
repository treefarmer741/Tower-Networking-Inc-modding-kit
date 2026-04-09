#ifndef TNI_API_HEADER_MAINMENU
#define TNI_API_HEADER_MAINMENU
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct MainMenu : public Control {
	using Control::Control;

	constexpr MainMenu(Control base) : Control{base} {}
	constexpr MainMenu(uint64_t addr) : Control{addr} {}
	constexpr MainMenu(Object obj) : MainMenu{obj.address()} {}
	MainMenu(Variant variant) : MainMenu{variant.as_object().address()} {}


	PROPERTY(miniann, Control);
	PROPERTY(hide_whitelist, Variant);

	inline void initialize();
	inline void show_announcements();
	inline void show_main_menu();
	inline void show_play_menu();
	inline void show_load_menu();
	inline void show_settings_menu();
	inline void show_mod_manager_menu();
	inline void show_steam_lobby_menu();
	inline void show_popup(String text);
	inline void show_game_over_stats(String text);
	inline void show_resume_mini_menu();
	inline void show_credits_page();
	inline void hide_all_controls();
	inline void play_bgm();
	inline void show_changelogs_page();
};


inline void MainMenu::initialize() { this->voidcall("initialize"); }
inline void MainMenu::show_announcements() { this->voidcall("show_announcements"); }
inline void MainMenu::show_main_menu() { this->voidcall("show_main_menu"); }
inline void MainMenu::show_play_menu() { this->voidcall("show_play_menu"); }
inline void MainMenu::show_load_menu() { this->voidcall("show_load_menu"); }
inline void MainMenu::show_settings_menu() { this->voidcall("show_settings_menu"); }
inline void MainMenu::show_mod_manager_menu() { this->voidcall("show_mod_manager_menu"); }
inline void MainMenu::show_steam_lobby_menu() { this->voidcall("show_steam_lobby_menu"); }
inline void MainMenu::show_popup(String text) { this->voidcall("show_popup", text); }
inline void MainMenu::show_game_over_stats(String text) { this->voidcall("show_game_over_stats", text); }
inline void MainMenu::show_resume_mini_menu() { this->voidcall("show_resume_mini_menu"); }
inline void MainMenu::show_credits_page() { this->voidcall("show_credits_page"); }
inline void MainMenu::hide_all_controls() { this->voidcall("hide_all_controls"); }
inline void MainMenu::play_bgm() { this->voidcall("play_bgm"); }
inline void MainMenu::show_changelogs_page() { this->voidcall("show_changelogs_page"); }

#endif
