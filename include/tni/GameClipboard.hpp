#ifndef TNI_API_HEADER_GAMECLIPBOARD
#define TNI_API_HEADER_GAMECLIPBOARD
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct GameClipboard : public Control {
	using Control::Control;

	constexpr GameClipboard(Control base) : Control{base} {}
	constexpr GameClipboard(uint64_t addr) : Control{addr} {}
	constexpr GameClipboard(Object obj) : GameClipboard{obj.address()} {}
	GameClipboard(Variant variant) : GameClipboard{variant.as_object().address()} {}

	static constexpr int64_t DEFAULT_ROWS = 6;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t DEFAULT_COLS = 4;  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(HEADER_BG, Variant);  // Const value type was not supported.
	PROPERTY(ROW_EVEN_BG, Variant);  // Const value type was not supported.
	PROPERTY(ROW_ODD_BG, Variant);  // Const value type was not supported.
	static constexpr int64_t Y_HIDE_HEIGHT = -740;  // NOTE: You should recompile your mod if this value changes!
	enum struct ContextType : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		NONE = 0,
		HWADDR = 1,
		NWADDR = 2,
		FQDN = 3,
	};

	PROPERTY(clipboard_notes, Variant);
	PROPERTY(main_panel, Variant);
	PROPERTY(clipboard_item_container, Variant);
	PROPERTY(main_button, Variant);
	PROPERTY(tab_container, Variant);
	PROPERTY(add_menu, Variant);
	PROPERTY(delete_confirm_dialog, Variant);
	PROPERTY(grid_container, GridContainer);
	PROPERTY(clipboard_item_scn, PackedScene);
	PROPERTY(spreadsheet_tab_scn, PackedScene);
	PROPERTY(tab_menu_icon, Texture2D);
	PROPERTY(tab_menu_icon_size, int64_t);
	PROPERTY(current_context, Variant);
	PROPERTY(context_type, int64_t);
	PROPERTY(twn, Tween);
	PROPERTY(tabs_data, String);
	PROPERTY(has_notepad_focus, bool);
	PROPERTY(clipboard_items, Variant);

	inline void set_clipboard_contexts(Variant ctx, int64_t typ);
	inline void cleanup();
	inline void fade_out();
	inline void fade_in();
	inline void refresh();
	inline void register_item(Variant a, int64_t mode);
	inline void pull_up();
	inline void pull_down();
};


inline void GameClipboard::set_clipboard_contexts(Variant ctx, int64_t typ) { this->voidcall("set_clipboard_contexts", ctx, typ); }
inline void GameClipboard::cleanup() { this->voidcall("cleanup"); }
inline void GameClipboard::fade_out() { this->voidcall("fade_out"); }
inline void GameClipboard::fade_in() { this->voidcall("fade_in"); }
inline void GameClipboard::refresh() { this->voidcall("refresh"); }
inline void GameClipboard::register_item(Variant a, int64_t mode) { this->voidcall("register_item", a, mode); }
inline void GameClipboard::pull_up() { this->voidcall("pull_up"); }
inline void GameClipboard::pull_down() { this->voidcall("pull_down"); }

#endif
