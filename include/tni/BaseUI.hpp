#ifndef TNI_API_HEADER_BASEUI
#define TNI_API_HEADER_BASEUI
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
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

	inline Node get_instance();
	inline void show_game_menu();
	inline void hide_game_menu();
	inline void show_wiki();
	inline void hide_wiki();
	inline void show_feedback();
	inline void hide_feedback();
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


inline Node BaseUI::get_instance() { return Node(operator()("get_instance").as_object().address()); }
inline void BaseUI::show_game_menu() { voidcall("show_game_menu"); }
inline void BaseUI::hide_game_menu() { voidcall("hide_game_menu"); }
inline void BaseUI::show_wiki() { voidcall("show_wiki"); }
inline void BaseUI::hide_wiki() { voidcall("hide_wiki"); }
inline void BaseUI::show_feedback() { voidcall("show_feedback"); }
inline void BaseUI::hide_feedback() { voidcall("hide_feedback"); }
inline void BaseUI::show_catalog() { voidcall("show_catalog"); }
inline void BaseUI::hide_catalog() { voidcall("hide_catalog"); }
inline void BaseUI::hide_game_uis() { voidcall("hide_game_uis"); }
inline void BaseUI::clear_notifications() { voidcall("clear_notifications"); }
inline void BaseUI::display_notification(String msg, int64_t tone_enum) { voidcall("display_notification", msg, tone_enum); }
inline void BaseUI::show_jumbotron(String s) { voidcall("show_jumbotron", s); }
inline void BaseUI::fade_screen() { voidcall("fade_screen"); }
inline void BaseUI::unfade_screen() { voidcall("unfade_screen"); }
inline void BaseUI::hide_loading_screen() { voidcall("hide_loading_screen"); }
inline void BaseUI::show_loading_screen() { voidcall("show_loading_screen"); }

#endif
