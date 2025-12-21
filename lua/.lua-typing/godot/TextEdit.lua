---@meta _
-- Generated API for game version 0.9.1

---@class TextEdit : Control
---@field text string
---@field placeholder_text string
---@field editable boolean
---@field context_menu_enabled boolean
---@field emoji_menu_enabled boolean
---@field backspace_deletes_composite_character_enabled boolean
---@field shortcut_keys_enabled boolean
---@field selecting_enabled boolean
---@field deselect_on_focus_loss_enabled boolean
---@field drag_and_drop_selection_enabled boolean
---@field virtual_keyboard_enabled boolean
---@field virtual_keyboard_show_on_focus boolean
---@field middle_mouse_paste_enabled boolean
---@field empty_selection_clipboard_enabled boolean
---@field wrap_mode integer
---@field autowrap_mode integer
---@field indent_wrapped_lines boolean
---@field tab_input_mode boolean
---@field scroll_smooth boolean
---@field scroll_v_scroll_speed number
---@field scroll_past_end_of_file boolean
---@field scroll_vertical number
---@field scroll_horizontal integer
---@field scroll_fit_content_height boolean
---@field scroll_fit_content_width boolean
---@field minimap_draw boolean
---@field minimap_width integer
---@field caret_type integer
---@field caret_blink boolean
---@field caret_blink_interval number
---@field caret_draw_when_editable_disabled boolean
---@field caret_move_on_right_click boolean
---@field caret_mid_grapheme boolean
---@field caret_multiple boolean
---@field use_default_word_separators boolean
---@field use_custom_word_separators boolean
---@field custom_word_separators string
---@field syntax_highlighter SyntaxHighlighter
---@field highlight_all_occurrences boolean
---@field highlight_current_line boolean
---@field draw_control_chars boolean
---@field draw_tabs boolean
---@field draw_spaces boolean
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local TextEdit = {}

---@return boolean
function TextEdit.has_ime_text() end

function TextEdit.cancel_ime() end

function TextEdit.apply_ime() end

---@param enabled boolean
function TextEdit.set_editable(enabled) end

---@return boolean
function TextEdit.is_editable() end

---@param direction Control.TextDirection
function TextEdit.set_text_direction(direction) end

---@return Control.TextDirection
function TextEdit.get_text_direction() end

---@param language string
function TextEdit.set_language(language) end

---@return string
function TextEdit.get_language() end

---@param parser TextServer.StructuredTextParser
function TextEdit.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function TextEdit.get_structured_text_bidi_override() end

---@param args Array<any>
function TextEdit.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function TextEdit.get_structured_text_bidi_override_options() end

---@param size integer
function TextEdit.set_tab_size(size) end

---@return integer
function TextEdit.get_tab_size() end

---@param enabled boolean
function TextEdit.set_indent_wrapped_lines(enabled) end

---@return boolean
function TextEdit.is_indent_wrapped_lines() end

---@param enabled boolean
function TextEdit.set_tab_input_mode(enabled) end

---@return boolean
function TextEdit.get_tab_input_mode() end

---@param enabled boolean
function TextEdit.set_overtype_mode_enabled(enabled) end

---@return boolean
function TextEdit.is_overtype_mode_enabled() end

---@param enabled boolean
function TextEdit.set_context_menu_enabled(enabled) end

---@return boolean
function TextEdit.is_context_menu_enabled() end

---@param enable boolean
function TextEdit.set_emoji_menu_enabled(enable) end

---@return boolean
function TextEdit.is_emoji_menu_enabled() end

---@param enable boolean
function TextEdit.set_backspace_deletes_composite_character_enabled(enable) end

---@return boolean
function TextEdit.is_backspace_deletes_composite_character_enabled() end

---@param enabled boolean
function TextEdit.set_shortcut_keys_enabled(enabled) end

---@return boolean
function TextEdit.is_shortcut_keys_enabled() end

---@param enabled boolean
function TextEdit.set_virtual_keyboard_enabled(enabled) end

---@return boolean
function TextEdit.is_virtual_keyboard_enabled() end

---@param show_on_focus boolean
function TextEdit.set_virtual_keyboard_show_on_focus(show_on_focus) end

---@return boolean
function TextEdit.get_virtual_keyboard_show_on_focus() end

---@param enabled boolean
function TextEdit.set_middle_mouse_paste_enabled(enabled) end

---@return boolean
function TextEdit.is_middle_mouse_paste_enabled() end

---@param enabled boolean
function TextEdit.set_empty_selection_clipboard_enabled(enabled) end

---@return boolean
function TextEdit.is_empty_selection_clipboard_enabled() end

function TextEdit.clear() end

---@param text string
function TextEdit.set_text(text) end

---@return string
function TextEdit.get_text() end

---@return integer
function TextEdit.get_line_count() end

---@param text string
function TextEdit.set_placeholder(text) end

---@return string
function TextEdit.get_placeholder() end

---@param line integer
---@param new_text string
function TextEdit.set_line(line, new_text) end

---@param line integer
---@return string
function TextEdit.get_line(line) end

---@param line integer
---@return string
function TextEdit.get_line_with_ime(line) end

---@param line integer
---@param wrap_index integer?  # Default = -1
---@return integer
function TextEdit.get_line_width(line, wrap_index) end

---@return integer
function TextEdit.get_line_height() end

---@param line integer
---@return integer
function TextEdit.get_indent_level(line) end

---@param line integer
---@return integer
function TextEdit.get_first_non_whitespace_column(line) end

---@param from_line integer
---@param to_line integer
function TextEdit.swap_lines(from_line, to_line) end

---@param line integer
---@param text string
function TextEdit.insert_line_at(line, text) end

---@param line integer
---@param move_carets_down boolean?  # Default = true
function TextEdit.remove_line_at(line, move_carets_down) end

---@param text string
---@param caret_index integer?  # Default = -1
function TextEdit.insert_text_at_caret(text, caret_index) end

---@param text string
---@param line integer
---@param column integer
---@param before_selection_begin boolean?  # Default = true
---@param before_selection_end boolean?  # Default = false
function TextEdit.insert_text(text, line, column, before_selection_begin, before_selection_end) end

---@param from_line integer
---@param from_column integer
---@param to_line integer
---@param to_column integer
function TextEdit.remove_text(from_line, from_column, to_line, to_column) end

---@return integer
function TextEdit.get_last_unhidden_line() end

---@param line integer
---@param visible_amount integer
---@return integer
function TextEdit.get_next_visible_line_offset_from(line, visible_amount) end

---@param line integer
---@param wrap_index integer
---@param visible_amount integer
---@return Vector2i
function TextEdit.get_next_visible_line_index_offset_from(line, wrap_index, visible_amount) end

---@param caret_index integer?  # Default = -1
function TextEdit.backspace(caret_index) end

---@param caret_index integer?  # Default = -1
function TextEdit.cut(caret_index) end

---@param caret_index integer?  # Default = -1
function TextEdit.copy(caret_index) end

---@param caret_index integer?  # Default = -1
function TextEdit.paste(caret_index) end

---@param caret_index integer?  # Default = -1
function TextEdit.paste_primary_clipboard(caret_index) end

---@param action TextEdit.EditAction
function TextEdit.start_action(action) end

function TextEdit.end_action() end

function TextEdit.begin_complex_operation() end

function TextEdit.end_complex_operation() end

---@return boolean
function TextEdit.has_undo() end

---@return boolean
function TextEdit.has_redo() end

function TextEdit.undo() end

function TextEdit.redo() end

function TextEdit.clear_undo_history() end

function TextEdit.tag_saved_version() end

---@return integer
function TextEdit.get_version() end

---@return integer
function TextEdit.get_saved_version() end

---@param search_text string
function TextEdit.set_search_text(search_text) end

---@param flags integer
function TextEdit.set_search_flags(flags) end

---@param text string
---@param flags integer
---@param from_line integer
---@param from_column integer
---@return Vector2i
function TextEdit.search(text, flags, from_line, from_column) end

---@param callback (Callable|function)
function TextEdit.set_tooltip_request_func(callback) end

---@return Vector2
function TextEdit.get_local_mouse_pos() end

---@param position Vector2
---@return string
function TextEdit.get_word_at_pos(position) end

---@param position Vector2i
---@param clamp_line boolean?  # Default = true
---@param clamp_column boolean?  # Default = true
---@return Vector2i
function TextEdit.get_line_column_at_pos(position, clamp_line, clamp_column) end

---@param line integer
---@param column integer
---@return Vector2i
function TextEdit.get_pos_at_line_column(line, column) end

---@param line integer
---@param column integer
---@return Rect2i
function TextEdit.get_rect_at_line_column(line, column) end

---@param position Vector2i
---@return integer
function TextEdit.get_minimap_line_at_pos(position) end

---@return boolean
function TextEdit.is_dragging_cursor() end

---@param edges boolean
---@param caret_index integer?  # Default = -1
---@return boolean
function TextEdit.is_mouse_over_selection(edges, caret_index) end

---@param type TextEdit.CaretType
function TextEdit.set_caret_type(type) end

---@return TextEdit.CaretType
function TextEdit.get_caret_type() end

---@param enable boolean
function TextEdit.set_caret_blink_enabled(enable) end

---@return boolean
function TextEdit.is_caret_blink_enabled() end

---@param interval number
function TextEdit.set_caret_blink_interval(interval) end

---@return number
function TextEdit.get_caret_blink_interval() end

---@param enable boolean
function TextEdit.set_draw_caret_when_editable_disabled(enable) end

---@return boolean
function TextEdit.is_drawing_caret_when_editable_disabled() end

---@param enable boolean
function TextEdit.set_move_caret_on_right_click_enabled(enable) end

---@return boolean
function TextEdit.is_move_caret_on_right_click_enabled() end

---@param enabled boolean
function TextEdit.set_caret_mid_grapheme_enabled(enabled) end

---@return boolean
function TextEdit.is_caret_mid_grapheme_enabled() end

---@param enabled boolean
function TextEdit.set_multiple_carets_enabled(enabled) end

---@return boolean
function TextEdit.is_multiple_carets_enabled() end

---@param line integer
---@param column integer
---@return integer
function TextEdit.add_caret(line, column) end

---@param caret integer
function TextEdit.remove_caret(caret) end

function TextEdit.remove_secondary_carets() end

---@return integer
function TextEdit.get_caret_count() end

---@param below boolean
function TextEdit.add_caret_at_carets(below) end

---@param include_ignored_carets boolean?  # Default = false
---@return PackedInt32Array
function TextEdit.get_sorted_carets(include_ignored_carets) end

---@param from_line integer
---@param from_column integer
---@param to_line integer
---@param to_column integer
---@param inclusive boolean?  # Default = false
function TextEdit.collapse_carets(from_line, from_column, to_line, to_column, inclusive) end

function TextEdit.merge_overlapping_carets() end

function TextEdit.begin_multicaret_edit() end

function TextEdit.end_multicaret_edit() end

---@return boolean
function TextEdit.is_in_mulitcaret_edit() end

---@param caret_index integer
---@return boolean
function TextEdit.multicaret_edit_ignore_caret(caret_index) end

---@param caret_index integer?  # Default = 0
---@return boolean
function TextEdit.is_caret_visible(caret_index) end

---@param caret_index integer?  # Default = 0
---@return Vector2
function TextEdit.get_caret_draw_pos(caret_index) end

---@param line integer
---@param adjust_viewport boolean?  # Default = true
---@param can_be_hidden boolean?  # Default = true
---@param wrap_index integer?  # Default = 0
---@param caret_index integer?  # Default = 0
function TextEdit.set_caret_line(line, adjust_viewport, can_be_hidden, wrap_index, caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_caret_line(caret_index) end

---@param column integer
---@param adjust_viewport boolean?  # Default = true
---@param caret_index integer?  # Default = 0
function TextEdit.set_caret_column(column, adjust_viewport, caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_caret_column(caret_index) end

---@param line integer
---@param column integer
---@return integer
function TextEdit.get_next_composite_character_column(line, column) end

---@param line integer
---@param column integer
---@return integer
function TextEdit.get_previous_composite_character_column(line, column) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_caret_wrap_index(caret_index) end

---@param caret_index integer?  # Default = -1
---@return string
function TextEdit.get_word_under_caret(caret_index) end

---@param enabled boolean
function TextEdit.set_use_default_word_separators(enabled) end

---@return boolean
function TextEdit.is_default_word_separators_enabled() end

---@param enabled boolean
function TextEdit.set_use_custom_word_separators(enabled) end

---@return boolean
function TextEdit.is_custom_word_separators_enabled() end

---@param custom_word_separators string
function TextEdit.set_custom_word_separators(custom_word_separators) end

---@return string
function TextEdit.get_custom_word_separators() end

---@param enable boolean
function TextEdit.set_selecting_enabled(enable) end

---@return boolean
function TextEdit.is_selecting_enabled() end

---@param enable boolean
function TextEdit.set_deselect_on_focus_loss_enabled(enable) end

---@return boolean
function TextEdit.is_deselect_on_focus_loss_enabled() end

---@param enable boolean
function TextEdit.set_drag_and_drop_selection_enabled(enable) end

---@return boolean
function TextEdit.is_drag_and_drop_selection_enabled() end

---@param mode TextEdit.SelectionMode
function TextEdit.set_selection_mode(mode) end

---@return TextEdit.SelectionMode
function TextEdit.get_selection_mode() end

function TextEdit.select_all() end

---@param caret_index integer?  # Default = -1
function TextEdit.select_word_under_caret(caret_index) end

function TextEdit.add_selection_for_next_occurrence() end

function TextEdit.skip_selection_for_next_occurrence() end

---@param origin_line integer
---@param origin_column integer
---@param caret_line integer
---@param caret_column integer
---@param caret_index integer?  # Default = 0
function TextEdit.select(origin_line, origin_column, caret_line, caret_column, caret_index) end

---@param caret_index integer?  # Default = -1
---@return boolean
function TextEdit.has_selection(caret_index) end

---@param caret_index integer?  # Default = -1
---@return string
function TextEdit.get_selected_text(caret_index) end

---@param line integer
---@param column integer
---@param include_edges boolean?  # Default = true
---@param only_selections boolean?  # Default = true
---@return integer
function TextEdit.get_selection_at_line_column(line, column, include_edges, only_selections) end

---@param only_selections boolean?  # Default = false
---@param merge_adjacent boolean?  # Default = true
---@return Array<Vector2i>
function TextEdit.get_line_ranges_from_carets(only_selections, merge_adjacent) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_origin_line(caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_origin_column(caret_index) end

---@param line integer
---@param can_be_hidden boolean?  # Default = true
---@param wrap_index integer?  # Default = -1
---@param caret_index integer?  # Default = 0
function TextEdit.set_selection_origin_line(line, can_be_hidden, wrap_index, caret_index) end

---@param column integer
---@param caret_index integer?  # Default = 0
function TextEdit.set_selection_origin_column(column, caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_from_line(caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_from_column(caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_to_line(caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_to_column(caret_index) end

---@param caret_index integer?  # Default = 0
---@return boolean
function TextEdit.is_caret_after_selection_origin(caret_index) end

---@param caret_index integer?  # Default = -1
function TextEdit.deselect(caret_index) end

---@param caret_index integer?  # Default = -1
function TextEdit.delete_selection(caret_index) end

---@param mode TextEdit.LineWrappingMode
function TextEdit.set_line_wrapping_mode(mode) end

---@return TextEdit.LineWrappingMode
function TextEdit.get_line_wrapping_mode() end

---@param autowrap_mode TextServer.AutowrapMode
function TextEdit.set_autowrap_mode(autowrap_mode) end

---@return TextServer.AutowrapMode
function TextEdit.get_autowrap_mode() end

---@param line integer
---@return boolean
function TextEdit.is_line_wrapped(line) end

---@param line integer
---@return integer
function TextEdit.get_line_wrap_count(line) end

---@param line integer
---@param column integer
---@return integer
function TextEdit.get_line_wrap_index_at_column(line, column) end

---@param line integer
---@return PackedStringArray
function TextEdit.get_line_wrapped_text(line) end

---@param enable boolean
function TextEdit.set_smooth_scroll_enabled(enable) end

---@return boolean
function TextEdit.is_smooth_scroll_enabled() end

---@return VScrollBar
function TextEdit.get_v_scroll_bar() end

---@return HScrollBar
function TextEdit.get_h_scroll_bar() end

---@param value number
function TextEdit.set_v_scroll(value) end

---@return number
function TextEdit.get_v_scroll() end

---@param value integer
function TextEdit.set_h_scroll(value) end

---@return integer
function TextEdit.get_h_scroll() end

---@param enable boolean
function TextEdit.set_scroll_past_end_of_file_enabled(enable) end

---@return boolean
function TextEdit.is_scroll_past_end_of_file_enabled() end

---@param speed number
function TextEdit.set_v_scroll_speed(speed) end

---@return number
function TextEdit.get_v_scroll_speed() end

---@param enabled boolean
function TextEdit.set_fit_content_height_enabled(enabled) end

---@return boolean
function TextEdit.is_fit_content_height_enabled() end

---@param enabled boolean
function TextEdit.set_fit_content_width_enabled(enabled) end

---@return boolean
function TextEdit.is_fit_content_width_enabled() end

---@param line integer
---@param wrap_index integer?  # Default = 0
---@return number
function TextEdit.get_scroll_pos_for_line(line, wrap_index) end

---@param line integer
---@param wrap_index integer?  # Default = 0
function TextEdit.set_line_as_first_visible(line, wrap_index) end

---@return integer
function TextEdit.get_first_visible_line() end

---@param line integer
---@param wrap_index integer?  # Default = 0
function TextEdit.set_line_as_center_visible(line, wrap_index) end

---@param line integer
---@param wrap_index integer?  # Default = 0
function TextEdit.set_line_as_last_visible(line, wrap_index) end

---@return integer
function TextEdit.get_last_full_visible_line() end

---@return integer
function TextEdit.get_last_full_visible_line_wrap_index() end

---@return integer
function TextEdit.get_visible_line_count() end

---@param from_line integer
---@param to_line integer
---@return integer
function TextEdit.get_visible_line_count_in_range(from_line, to_line) end

---@return integer
function TextEdit.get_total_visible_line_count() end

---@param caret_index integer?  # Default = 0
function TextEdit.adjust_viewport_to_caret(caret_index) end

---@param caret_index integer?  # Default = 0
function TextEdit.center_viewport_to_caret(caret_index) end

---@param enabled boolean
function TextEdit.set_draw_minimap(enabled) end

---@return boolean
function TextEdit.is_drawing_minimap() end

---@param width integer
function TextEdit.set_minimap_width(width) end

---@return integer
function TextEdit.get_minimap_width() end

---@return integer
function TextEdit.get_minimap_visible_lines() end

---@param at integer?  # Default = -1
function TextEdit.add_gutter(at) end

---@param gutter integer
function TextEdit.remove_gutter(gutter) end

---@return integer
function TextEdit.get_gutter_count() end

---@param gutter integer
---@param name string
function TextEdit.set_gutter_name(gutter, name) end

---@param gutter integer
---@return string
function TextEdit.get_gutter_name(gutter) end

---@param gutter integer
---@param type TextEdit.GutterType
function TextEdit.set_gutter_type(gutter, type) end

---@param gutter integer
---@return TextEdit.GutterType
function TextEdit.get_gutter_type(gutter) end

---@param gutter integer
---@param width integer
function TextEdit.set_gutter_width(gutter, width) end

---@param gutter integer
---@return integer
function TextEdit.get_gutter_width(gutter) end

---@param gutter integer
---@param draw boolean
function TextEdit.set_gutter_draw(gutter, draw) end

---@param gutter integer
---@return boolean
function TextEdit.is_gutter_drawn(gutter) end

---@param gutter integer
---@param clickable boolean
function TextEdit.set_gutter_clickable(gutter, clickable) end

---@param gutter integer
---@return boolean
function TextEdit.is_gutter_clickable(gutter) end

---@param gutter integer
---@param overwritable boolean
function TextEdit.set_gutter_overwritable(gutter, overwritable) end

---@param gutter integer
---@return boolean
function TextEdit.is_gutter_overwritable(gutter) end

---@param from_line integer
---@param to_line integer
function TextEdit.merge_gutters(from_line, to_line) end

---@param column integer
---@param draw_callback (Callable|function)
function TextEdit.set_gutter_custom_draw(column, draw_callback) end

---@return integer
function TextEdit.get_total_gutter_width() end

---@param line integer
---@param gutter integer
---@param metadata Object
function TextEdit.set_line_gutter_metadata(line, gutter, metadata) end

---@param line integer
---@param gutter integer
---@return Object
function TextEdit.get_line_gutter_metadata(line, gutter) end

---@param line integer
---@param gutter integer
---@param text string
function TextEdit.set_line_gutter_text(line, gutter, text) end

---@param line integer
---@param gutter integer
---@return string
function TextEdit.get_line_gutter_text(line, gutter) end

---@param line integer
---@param gutter integer
---@param icon Texture2D
function TextEdit.set_line_gutter_icon(line, gutter, icon) end

---@param line integer
---@param gutter integer
---@return Texture2D
function TextEdit.get_line_gutter_icon(line, gutter) end

---@param line integer
---@param gutter integer
---@param color Color
function TextEdit.set_line_gutter_item_color(line, gutter, color) end

---@param line integer
---@param gutter integer
---@return Color
function TextEdit.get_line_gutter_item_color(line, gutter) end

---@param line integer
---@param gutter integer
---@param clickable boolean
function TextEdit.set_line_gutter_clickable(line, gutter, clickable) end

---@param line integer
---@param gutter integer
---@return boolean
function TextEdit.is_line_gutter_clickable(line, gutter) end

---@param line integer
---@param color Color
function TextEdit.set_line_background_color(line, color) end

---@param line integer
---@return Color
function TextEdit.get_line_background_color(line) end

---@param syntax_highlighter SyntaxHighlighter
function TextEdit.set_syntax_highlighter(syntax_highlighter) end

---@return SyntaxHighlighter
function TextEdit.get_syntax_highlighter() end

---@param enabled boolean
function TextEdit.set_highlight_current_line(enabled) end

---@return boolean
function TextEdit.is_highlight_current_line_enabled() end

---@param enabled boolean
function TextEdit.set_highlight_all_occurrences(enabled) end

---@return boolean
function TextEdit.is_highlight_all_occurrences_enabled() end

---@return boolean
function TextEdit.get_draw_control_chars() end

---@param enabled boolean
function TextEdit.set_draw_control_chars(enabled) end

---@param enabled boolean
function TextEdit.set_draw_tabs(enabled) end

---@return boolean
function TextEdit.is_drawing_tabs() end

---@param enabled boolean
function TextEdit.set_draw_spaces(enabled) end

---@return boolean
function TextEdit.is_drawing_spaces() end

---@return PopupMenu
function TextEdit.get_menu() end

---@return boolean
function TextEdit.is_menu_visible() end

---@param option integer
function TextEdit.menu_option(option) end

---@param caret integer
---@param from_line integer
---@param from_col integer
---@param to_line integer
---@param to_col integer
function TextEdit.adjust_carets_after_edit(caret, from_line, from_col, to_line, to_col) end

---@return PackedInt32Array
function TextEdit.get_caret_index_edit_order() end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_line(caret_index) end

---@param caret_index integer?  # Default = 0
---@return integer
function TextEdit.get_selection_column(caret_index) end
