---@meta _
-- Generated API for game version 0.10.0

---@class LineEdit : Control
---@field text string
---@field placeholder_text string
---@field alignment integer
---@field max_length integer
---@field editable boolean
---@field keep_editing_on_text_submit boolean
---@field expand_to_text_length boolean
---@field context_menu_enabled boolean
---@field emoji_menu_enabled boolean
---@field backspace_deletes_composite_character_enabled boolean
---@field virtual_keyboard_enabled boolean
---@field virtual_keyboard_show_on_focus boolean
---@field virtual_keyboard_type integer
---@field clear_button_enabled boolean
---@field shortcut_keys_enabled boolean
---@field middle_mouse_paste_enabled boolean
---@field selecting_enabled boolean
---@field deselect_on_focus_loss_enabled boolean
---@field drag_and_drop_selection_enabled boolean
---@field right_icon Texture2D
---@field flat boolean
---@field draw_control_chars boolean
---@field select_all_on_focus boolean
---@field caret_blink boolean
---@field caret_blink_interval number
---@field caret_column integer
---@field caret_force_displayed boolean
---@field caret_mid_grapheme boolean
---@field secret boolean
---@field secret_character string
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local LineEdit = {}

---@return boolean
function LineEdit.has_ime_text() end

function LineEdit.cancel_ime() end

function LineEdit.apply_ime() end

---@param alignment HorizontalAlignment
function LineEdit.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function LineEdit.get_horizontal_alignment() end

function LineEdit.edit() end

function LineEdit.unedit() end

---@return boolean
function LineEdit.is_editing() end

---@param enable boolean
function LineEdit.set_keep_editing_on_text_submit(enable) end

---@return boolean
function LineEdit.is_editing_kept_on_text_submit() end

function LineEdit.clear() end

---@param from integer?  # Default = 0
---@param to integer?  # Default = -1
function LineEdit.select(from, to) end

function LineEdit.select_all() end

function LineEdit.deselect() end

---@return boolean
function LineEdit.has_undo() end

---@return boolean
function LineEdit.has_redo() end

---@return boolean
function LineEdit.has_selection() end

---@return string
function LineEdit.get_selected_text() end

---@return integer
function LineEdit.get_selection_from_column() end

---@return integer
function LineEdit.get_selection_to_column() end

---@param text string
function LineEdit.set_text(text) end

---@return string
function LineEdit.get_text() end

---@return boolean
function LineEdit.get_draw_control_chars() end

---@param enable boolean
function LineEdit.set_draw_control_chars(enable) end

---@param direction Control.TextDirection
function LineEdit.set_text_direction(direction) end

---@return Control.TextDirection
function LineEdit.get_text_direction() end

---@param language string
function LineEdit.set_language(language) end

---@return string
function LineEdit.get_language() end

---@param parser TextServer.StructuredTextParser
function LineEdit.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function LineEdit.get_structured_text_bidi_override() end

---@param args Array<any>
function LineEdit.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function LineEdit.get_structured_text_bidi_override_options() end

---@param text string
function LineEdit.set_placeholder(text) end

---@return string
function LineEdit.get_placeholder() end

---@param position integer
function LineEdit.set_caret_column(position) end

---@return integer
function LineEdit.get_caret_column() end

---@param column integer
---@return integer
function LineEdit.get_next_composite_character_column(column) end

---@param column integer
---@return integer
function LineEdit.get_previous_composite_character_column(column) end

---@return number
function LineEdit.get_scroll_offset() end

---@param enabled boolean
function LineEdit.set_expand_to_text_length_enabled(enabled) end

---@return boolean
function LineEdit.is_expand_to_text_length_enabled() end

---@param enabled boolean
function LineEdit.set_caret_blink_enabled(enabled) end

---@return boolean
function LineEdit.is_caret_blink_enabled() end

---@param enabled boolean
function LineEdit.set_caret_mid_grapheme_enabled(enabled) end

---@return boolean
function LineEdit.is_caret_mid_grapheme_enabled() end

---@param enabled boolean
function LineEdit.set_caret_force_displayed(enabled) end

---@return boolean
function LineEdit.is_caret_force_displayed() end

---@param interval number
function LineEdit.set_caret_blink_interval(interval) end

---@return number
function LineEdit.get_caret_blink_interval() end

---@param chars integer
function LineEdit.set_max_length(chars) end

---@return integer
function LineEdit.get_max_length() end

---@param text string
function LineEdit.insert_text_at_caret(text) end

function LineEdit.delete_char_at_caret() end

---@param from_column integer
---@param to_column integer
function LineEdit.delete_text(from_column, to_column) end

---@param enabled boolean
function LineEdit.set_editable(enabled) end

---@return boolean
function LineEdit.is_editable() end

---@param enabled boolean
function LineEdit.set_secret(enabled) end

---@return boolean
function LineEdit.is_secret() end

---@param character string
function LineEdit.set_secret_character(character) end

---@return string
function LineEdit.get_secret_character() end

---@param option integer
function LineEdit.menu_option(option) end

---@return PopupMenu
function LineEdit.get_menu() end

---@return boolean
function LineEdit.is_menu_visible() end

---@param enable boolean
function LineEdit.set_context_menu_enabled(enable) end

---@return boolean
function LineEdit.is_context_menu_enabled() end

---@param enable boolean
function LineEdit.set_emoji_menu_enabled(enable) end

---@return boolean
function LineEdit.is_emoji_menu_enabled() end

---@param enable boolean
function LineEdit.set_backspace_deletes_composite_character_enabled(enable) end

---@return boolean
function LineEdit.is_backspace_deletes_composite_character_enabled() end

---@param enable boolean
function LineEdit.set_virtual_keyboard_enabled(enable) end

---@return boolean
function LineEdit.is_virtual_keyboard_enabled() end

---@param show_on_focus boolean
function LineEdit.set_virtual_keyboard_show_on_focus(show_on_focus) end

---@return boolean
function LineEdit.get_virtual_keyboard_show_on_focus() end

---@param type LineEdit.VirtualKeyboardType
function LineEdit.set_virtual_keyboard_type(type) end

---@return LineEdit.VirtualKeyboardType
function LineEdit.get_virtual_keyboard_type() end

---@param enable boolean
function LineEdit.set_clear_button_enabled(enable) end

---@return boolean
function LineEdit.is_clear_button_enabled() end

---@param enable boolean
function LineEdit.set_shortcut_keys_enabled(enable) end

---@return boolean
function LineEdit.is_shortcut_keys_enabled() end

---@param enable boolean
function LineEdit.set_middle_mouse_paste_enabled(enable) end

---@return boolean
function LineEdit.is_middle_mouse_paste_enabled() end

---@param enable boolean
function LineEdit.set_selecting_enabled(enable) end

---@return boolean
function LineEdit.is_selecting_enabled() end

---@param enable boolean
function LineEdit.set_deselect_on_focus_loss_enabled(enable) end

---@return boolean
function LineEdit.is_deselect_on_focus_loss_enabled() end

---@param enable boolean
function LineEdit.set_drag_and_drop_selection_enabled(enable) end

---@return boolean
function LineEdit.is_drag_and_drop_selection_enabled() end

---@param icon Texture2D
function LineEdit.set_right_icon(icon) end

---@return Texture2D
function LineEdit.get_right_icon() end

---@param enabled boolean
function LineEdit.set_flat(enabled) end

---@return boolean
function LineEdit.is_flat() end

---@param enabled boolean
function LineEdit.set_select_all_on_focus(enabled) end

---@return boolean
function LineEdit.is_select_all_on_focus() end
