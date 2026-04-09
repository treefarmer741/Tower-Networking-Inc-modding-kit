#ifndef TNI_API_HEADER_BASEUI
#define TNI_API_HEADER_BASEUI
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct BaseUI : public CanvasLayer {
	using CanvasLayer::CanvasLayer;

	constexpr BaseUI(CanvasLayer base) : CanvasLayer{base} {}
	constexpr BaseUI(uint64_t addr) : CanvasLayer{addr} {}
	constexpr BaseUI(Object obj) : BaseUI{obj.address()} {}
	BaseUI(Variant variant) : BaseUI{variant.as_object().address()} {}


	PROPERTY(is_fully_unfaded, bool);
	PROPERTY(clipboard, Variant);
	PROPERTY(game_menu, Variant);
	PROPERTY(wiki, Variant);
	PROPERTY(feedback, Variant);
	PROPERTY(mod_manager, Variant);
	PROPERTY(catalog, Variant);
	PROPERTY(screen_fader, Variant);
	PROPERTY(jumbotron_flasher, Variant);
	PROPERTY(jumbotron, Variant);
	PROPERTY(fader, Variant);
	PROPERTY(notifications, Variant);
	PROPERTY(loading_screen, Variant);
	PROPERTY(tutorial_board, Variant);
	PROPERTY(hint_board, Variant);
	PROPERTY(eval_banner_visible, bool);
	PROPERTY(input_blocker, ColorRect);
	PROPERTY(posnot, AudioStreamPlayer);
	PROPERTY(neunot, AudioStreamPlayer);
	PROPERTY(neuno2, AudioStreamPlayer);
	PROPERTY(neuno3, AudioStreamPlayer);
	PROPERTY(is_wiki_showing, bool);
	PROPERTY(is_feedback_showing, bool);
	PROPERTY(is_catalog_showing, bool);
	PROPERTY(is_game_menu_showing, bool);
	PROPERTY(loading_screen_is_hidden, bool);

	inline BaseUI get_instance();
	inline void show_game_menu();
	inline void hide_game_menu();
	inline void show_wiki();
	inline void hide_wiki();
	inline void show_feedback();
	inline void hide_feedback();
	inline void show_mod_manager();
	inline void hide_mod_manager();
	inline void show_catalog();
	inline void hide_catalog();
	inline void hide_game_uis();
	inline void clear_notifications();
	inline void display_notification(String msg, int64_t tone_enum);
	inline void show_jumbotron(String s);
	inline void fade_screen();
	inline void unfade_screen();
	inline void hide_loading_screen();
	inline void show_loading_screen();
};

#include "BaseUI.hpp"

inline BaseUI BaseUI::get_instance() { return BaseUI(this->operator()("get_instance").as_object().address()); }
inline void BaseUI::show_game_menu() { this->voidcall("show_game_menu"); }
inline void BaseUI::hide_game_menu() { this->voidcall("hide_game_menu"); }
inline void BaseUI::show_wiki() { this->voidcall("show_wiki"); }
inline void BaseUI::hide_wiki() { this->voidcall("hide_wiki"); }
inline void BaseUI::show_feedback() { this->voidcall("show_feedback"); }
inline void BaseUI::hide_feedback() { this->voidcall("hide_feedback"); }
inline void BaseUI::show_mod_manager() { this->voidcall("show_mod_manager"); }
inline void BaseUI::hide_mod_manager() { this->voidcall("hide_mod_manager"); }
inline void BaseUI::show_catalog() { this->voidcall("show_catalog"); }
inline void BaseUI::hide_catalog() { this->voidcall("hide_catalog"); }
inline void BaseUI::hide_game_uis() { this->voidcall("hide_game_uis"); }
inline void BaseUI::clear_notifications() { this->voidcall("clear_notifications"); }
inline void BaseUI::display_notification(String msg, int64_t tone_enum) { this->voidcall("display_notification", msg, tone_enum); }
inline void BaseUI::show_jumbotron(String s) { this->voidcall("show_jumbotron", s); }
inline void BaseUI::fade_screen() { this->voidcall("fade_screen"); }
inline void BaseUI::unfade_screen() { this->voidcall("unfade_screen"); }
inline void BaseUI::hide_loading_screen() { this->voidcall("hide_loading_screen"); }
inline void BaseUI::show_loading_screen() { this->voidcall("show_loading_screen"); }

#endif
