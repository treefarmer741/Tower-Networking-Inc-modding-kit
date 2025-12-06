#ifndef TNI_API_HEADER_BASEUI
#define TNI_API_HEADER_BASEUI
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod will with updated headers may be required!

#include <api.hpp>

struct BaseUI : public CanvasLayer {
	using CanvasLayer::CanvasLayer;


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
	PROPERTY(input_blocker, Variant);
	PROPERTY(posnot, Variant);
	PROPERTY(neunot, Variant);
	PROPERTY(neuno2, Variant);
	PROPERTY(neuno3, Variant);
	PROPERTY(is_wiki_showing, bool);
	PROPERTY(is_feedback_showing, bool);
	PROPERTY(is_catalog_showing, bool);
	PROPERTY(is_game_menu_showing, bool);
	PROPERTY(loading_screen_is_hidden, bool);

	inline Variant get_instance() { return operator()("get_instance"); }
	inline void show_game_menu() { voidcall("show_game_menu"); }
	inline void hide_game_menu() { voidcall("hide_game_menu"); }
	inline void show_wiki() { voidcall("show_wiki"); }
	inline void hide_wiki() { voidcall("hide_wiki"); }
	inline void show_feedback() { voidcall("show_feedback"); }
	inline void hide_feedback() { voidcall("hide_feedback"); }
	inline void show_catalog() { voidcall("show_catalog"); }
	inline void hide_catalog() { voidcall("hide_catalog"); }
	inline void hide_game_uis() { voidcall("hide_game_uis"); }
	inline void clear_notifications() { voidcall("clear_notifications"); }
	inline void display_notification(String msg, int64_t tone_enum) { voidcall("display_notification", msg, tone_enum); }
	inline void show_jumbotron(String s) { voidcall("show_jumbotron", s); }
	inline void fade_screen() { voidcall("fade_screen"); }
	inline void unfade_screen() { voidcall("unfade_screen"); }
	inline void hide_loading_screen() { voidcall("hide_loading_screen"); }
	inline void show_loading_screen() { voidcall("show_loading_screen"); }
};

#endif
