---@meta _
-- Generated API for game version 0.9.1

---@class CodeEdit : TextEdit
---@field symbol_lookup_on_click boolean
---@field symbol_tooltip_on_hover boolean
---@field line_folding boolean
---@field line_length_guidelines PackedInt32Array
---@field gutters_draw_breakpoints_gutter boolean
---@field gutters_draw_bookmarks boolean
---@field gutters_draw_executing_lines boolean
---@field gutters_draw_line_numbers boolean
---@field gutters_zero_pad_line_numbers boolean
---@field gutters_draw_fold_gutter boolean
---@field delimiter_strings PackedStringArray
---@field delimiter_comments PackedStringArray
---@field code_completion_enabled boolean
---@field code_completion_prefixes PackedStringArray
---@field indent_size integer
---@field indent_use_spaces boolean
---@field indent_automatic boolean
---@field indent_automatic_prefixes PackedStringArray
---@field auto_brace_completion_enabled boolean
---@field auto_brace_completion_highlight_matching boolean
---@field auto_brace_completion_pairs table<any,any>
local CodeEdit = {}

---@param size integer
function CodeEdit.set_indent_size(size) end

---@return integer
function CodeEdit.get_indent_size() end

---@param use_spaces boolean
function CodeEdit.set_indent_using_spaces(use_spaces) end

---@return boolean
function CodeEdit.is_indent_using_spaces() end

---@param enable boolean
function CodeEdit.set_auto_indent_enabled(enable) end

---@return boolean
function CodeEdit.is_auto_indent_enabled() end

---@param prefixes Array<string>
function CodeEdit.set_auto_indent_prefixes(prefixes) end

---@return Array<string>
function CodeEdit.get_auto_indent_prefixes() end

function CodeEdit.do_indent() end

function CodeEdit.indent_lines() end

function CodeEdit.unindent_lines() end

---@param from_line integer?  # Default = -1
---@param to_line integer?  # Default = -1
function CodeEdit.convert_indent(from_line, to_line) end

---@param enable boolean
function CodeEdit.set_auto_brace_completion_enabled(enable) end

---@return boolean
function CodeEdit.is_auto_brace_completion_enabled() end

---@param enable boolean
function CodeEdit.set_highlight_matching_braces_enabled(enable) end

---@return boolean
function CodeEdit.is_highlight_matching_braces_enabled() end

---@param start_key string
---@param end_key string
function CodeEdit.add_auto_brace_completion_pair(start_key, end_key) end

---@param pairs table<any,any>
function CodeEdit.set_auto_brace_completion_pairs(pairs) end

---@return table<any,any>
function CodeEdit.get_auto_brace_completion_pairs() end

---@param open_key string
---@return boolean
function CodeEdit.has_auto_brace_completion_open_key(open_key) end

---@param close_key string
---@return boolean
function CodeEdit.has_auto_brace_completion_close_key(close_key) end

---@param open_key string
---@return string
function CodeEdit.get_auto_brace_completion_close_key(open_key) end

---@param enable boolean
function CodeEdit.set_draw_breakpoints_gutter(enable) end

---@return boolean
function CodeEdit.is_drawing_breakpoints_gutter() end

---@param enable boolean
function CodeEdit.set_draw_bookmarks_gutter(enable) end

---@return boolean
function CodeEdit.is_drawing_bookmarks_gutter() end

---@param enable boolean
function CodeEdit.set_draw_executing_lines_gutter(enable) end

---@return boolean
function CodeEdit.is_drawing_executing_lines_gutter() end

---@param line integer
---@param breakpointed boolean
function CodeEdit.set_line_as_breakpoint(line, breakpointed) end

---@param line integer
---@return boolean
function CodeEdit.is_line_breakpointed(line) end

function CodeEdit.clear_breakpointed_lines() end

---@return PackedInt32Array
function CodeEdit.get_breakpointed_lines() end

---@param line integer
---@param bookmarked boolean
function CodeEdit.set_line_as_bookmarked(line, bookmarked) end

---@param line integer
---@return boolean
function CodeEdit.is_line_bookmarked(line) end

function CodeEdit.clear_bookmarked_lines() end

---@return PackedInt32Array
function CodeEdit.get_bookmarked_lines() end

---@param line integer
---@param executing boolean
function CodeEdit.set_line_as_executing(line, executing) end

---@param line integer
---@return boolean
function CodeEdit.is_line_executing(line) end

function CodeEdit.clear_executing_lines() end

---@return PackedInt32Array
function CodeEdit.get_executing_lines() end

---@param enable boolean
function CodeEdit.set_draw_line_numbers(enable) end

---@return boolean
function CodeEdit.is_draw_line_numbers_enabled() end

---@param enable boolean
function CodeEdit.set_line_numbers_zero_padded(enable) end

---@return boolean
function CodeEdit.is_line_numbers_zero_padded() end

---@param enable boolean
function CodeEdit.set_draw_fold_gutter(enable) end

---@return boolean
function CodeEdit.is_drawing_fold_gutter() end

---@param enabled boolean
function CodeEdit.set_line_folding_enabled(enabled) end

---@return boolean
function CodeEdit.is_line_folding_enabled() end

---@param line integer
---@return boolean
function CodeEdit.can_fold_line(line) end

---@param line integer
function CodeEdit.fold_line(line) end

---@param line integer
function CodeEdit.unfold_line(line) end

function CodeEdit.fold_all_lines() end

function CodeEdit.unfold_all_lines() end

---@param line integer
function CodeEdit.toggle_foldable_line(line) end

function CodeEdit.toggle_foldable_lines_at_carets() end

---@param line integer
---@return boolean
function CodeEdit.is_line_folded(line) end

---@return Array<integer>
function CodeEdit.get_folded_lines() end

function CodeEdit.create_code_region() end

---@return string
function CodeEdit.get_code_region_start_tag() end

---@return string
function CodeEdit.get_code_region_end_tag() end

---@param start string?  # Default = region
---@param end_ string?  # Default = endregion
function CodeEdit.set_code_region_tags(start, end_) end

---@param line integer
---@return boolean
function CodeEdit.is_line_code_region_start(line) end

---@param line integer
---@return boolean
function CodeEdit.is_line_code_region_end(line) end

---@param start_key string
---@param end_key string
---@param line_only boolean?  # Default = false
function CodeEdit.add_string_delimiter(start_key, end_key, line_only) end

---@param start_key string
function CodeEdit.remove_string_delimiter(start_key) end

---@param start_key string
---@return boolean
function CodeEdit.has_string_delimiter(start_key) end

---@param string_delimiters Array<string>
function CodeEdit.set_string_delimiters(string_delimiters) end

function CodeEdit.clear_string_delimiters() end

---@return Array<string>
function CodeEdit.get_string_delimiters() end

---@param line integer
---@param column integer?  # Default = -1
---@return integer
function CodeEdit.is_in_string(line, column) end

---@param start_key string
---@param end_key string
---@param line_only boolean?  # Default = false
function CodeEdit.add_comment_delimiter(start_key, end_key, line_only) end

---@param start_key string
function CodeEdit.remove_comment_delimiter(start_key) end

---@param start_key string
---@return boolean
function CodeEdit.has_comment_delimiter(start_key) end

---@param comment_delimiters Array<string>
function CodeEdit.set_comment_delimiters(comment_delimiters) end

function CodeEdit.clear_comment_delimiters() end

---@return Array<string>
function CodeEdit.get_comment_delimiters() end

---@param line integer
---@param column integer?  # Default = -1
---@return integer
function CodeEdit.is_in_comment(line, column) end

---@param delimiter_index integer
---@return string
function CodeEdit.get_delimiter_start_key(delimiter_index) end

---@param delimiter_index integer
---@return string
function CodeEdit.get_delimiter_end_key(delimiter_index) end

---@param line integer
---@param column integer
---@return Vector2
function CodeEdit.get_delimiter_start_position(line, column) end

---@param line integer
---@param column integer
---@return Vector2
function CodeEdit.get_delimiter_end_position(line, column) end

---@param code_hint string
function CodeEdit.set_code_hint(code_hint) end

---@param draw_below boolean
function CodeEdit.set_code_hint_draw_below(draw_below) end

---@return string
function CodeEdit.get_text_for_code_completion() end

---@param force boolean?  # Default = false
function CodeEdit.request_code_completion(force) end

---@param type CodeEdit.CodeCompletionKind
---@param display_text string
---@param insert_text string
---@param text_color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param icon Resource?  # Default = <Object#null>
---@param value Object?  # Default = <null>
---@param location integer?  # Default = 1024
function CodeEdit.add_code_completion_option(type, display_text, insert_text, text_color, icon, value, location) end

---@param force boolean
function CodeEdit.update_code_completion_options(force) end

---@return Array<Dictionary>
function CodeEdit.get_code_completion_options() end

---@param index integer
---@return table<any,any>
function CodeEdit.get_code_completion_option(index) end

---@return integer
function CodeEdit.get_code_completion_selected_index() end

---@param index integer
function CodeEdit.set_code_completion_selected_index(index) end

---@param replace boolean?  # Default = false
function CodeEdit.confirm_code_completion(replace) end

function CodeEdit.cancel_code_completion() end

---@param enable boolean
function CodeEdit.set_code_completion_enabled(enable) end

---@return boolean
function CodeEdit.is_code_completion_enabled() end

---@param prefixes Array<string>
function CodeEdit.set_code_completion_prefixes(prefixes) end

---@return Array<string>
function CodeEdit.get_code_completion_prefixes() end

---@param guideline_columns Array<integer>
function CodeEdit.set_line_length_guidelines(guideline_columns) end

---@return Array<integer>
function CodeEdit.get_line_length_guidelines() end

---@param enable boolean
function CodeEdit.set_symbol_lookup_on_click_enabled(enable) end

---@return boolean
function CodeEdit.is_symbol_lookup_on_click_enabled() end

---@return string
function CodeEdit.get_text_for_symbol_lookup() end

---@param line integer
---@param column integer
---@return string
function CodeEdit.get_text_with_cursor_char(line, column) end

---@param valid boolean
function CodeEdit.set_symbol_lookup_word_as_valid(valid) end

---@param enable boolean
function CodeEdit.set_symbol_tooltip_on_hover_enabled(enable) end

---@return boolean
function CodeEdit.is_symbol_tooltip_on_hover_enabled() end

function CodeEdit.move_lines_up() end

function CodeEdit.move_lines_down() end

function CodeEdit.delete_lines() end

function CodeEdit.duplicate_selection() end

function CodeEdit.duplicate_lines() end
