---@meta _
-- Generated API for game version 0.10.0

---@class RichTextLabel : Control
---@field bbcode_enabled boolean
---@field text string
---@field fit_content boolean
---@field scroll_active boolean
---@field scroll_following boolean
---@field scroll_following_visible_characters boolean
---@field autowrap_mode integer
---@field autowrap_trim_flags integer
---@field tab_size integer
---@field context_menu_enabled boolean
---@field shortcut_keys_enabled boolean
---@field horizontal_alignment integer
---@field vertical_alignment integer
---@field justification_flags integer
---@field tab_stops PackedFloat32Array
---@field custom_effects Array<24/17:RichTextEffect>
---@field meta_underlined boolean
---@field hint_underlined boolean
---@field threaded boolean
---@field progress_bar_delay integer
---@field selection_enabled boolean
---@field deselect_on_focus_loss_enabled boolean
---@field drag_and_drop_selection_enabled boolean
---@field visible_characters integer
---@field visible_characters_behavior integer
---@field visible_ratio number
---@field text_direction integer
---@field language string
---@field structured_text_bidi_override integer
---@field structured_text_bidi_override_options Array<any>
local RichTextLabel = {}

---@return string
function RichTextLabel.get_parsed_text() end

---@param text string
function RichTextLabel.add_text(text) end

---@param text string
function RichTextLabel.set_text(text) end

---@param width integer?  # Default = 90
---@param height integer?  # Default = 2
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param alignment HorizontalAlignment?  # Default = 1
---@param width_in_percent boolean?  # Default = true
---@param height_in_percent boolean?  # Default = false
function RichTextLabel.add_hr(width, height, color, alignment, width_in_percent, height_in_percent) end

---@param image Texture2D
---@param width integer?  # Default = 0
---@param height integer?  # Default = 0
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param inline_align InlineAlignment?  # Default = 5
---@param region Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param key Object?  # Default = <null>
---@param pad boolean?  # Default = false
---@param tooltip string?  # Default = 
---@param width_in_percent boolean?  # Default = false
---@param height_in_percent boolean?  # Default = false
---@param alt_text string?  # Default = 
function RichTextLabel.add_image(image, width, height, color, inline_align, region, key, pad, tooltip, width_in_percent, height_in_percent, alt_text) end

---@param key Object
---@param mask RichTextLabel.ImageUpdateMask
---@param image Texture2D
---@param width integer?  # Default = 0
---@param height integer?  # Default = 0
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param inline_align InlineAlignment?  # Default = 5
---@param region Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param pad boolean?  # Default = false
---@param tooltip string?  # Default = 
---@param width_in_percent boolean?  # Default = false
---@param height_in_percent boolean?  # Default = false
function RichTextLabel.update_image(key, mask, image, width, height, color, inline_align, region, pad, tooltip, width_in_percent, height_in_percent) end

function RichTextLabel.newline() end

---@param paragraph integer
---@param no_invalidate boolean?  # Default = false
---@return boolean
function RichTextLabel.remove_paragraph(paragraph, no_invalidate) end

---@param paragraph integer
---@return boolean
function RichTextLabel.invalidate_paragraph(paragraph) end

---@param font Font
---@param font_size integer?  # Default = 0
function RichTextLabel.push_font(font, font_size) end

---@param font_size integer
function RichTextLabel.push_font_size(font_size) end

function RichTextLabel.push_normal() end

function RichTextLabel.push_bold() end

function RichTextLabel.push_bold_italics() end

function RichTextLabel.push_italics() end

function RichTextLabel.push_mono() end

---@param color Color
function RichTextLabel.push_color(color) end

---@param outline_size integer
function RichTextLabel.push_outline_size(outline_size) end

---@param color Color
function RichTextLabel.push_outline_color(color) end

---@param alignment HorizontalAlignment
---@param base_direction Control.TextDirection?  # Default = 0
---@param language string?  # Default = 
---@param st_parser TextServer.StructuredTextParser?  # Default = 0
---@param justification_flags TextServer.JustificationFlag?  # Default = 163
---@param tab_stops PackedFloat32Array?  # Default = []
function RichTextLabel.push_paragraph(alignment, base_direction, language, st_parser, justification_flags, tab_stops) end

---@param level integer
function RichTextLabel.push_indent(level) end

---@param level integer
---@param type RichTextLabel.ListType
---@param capitalize boolean
---@param bullet string?  # Default = •
function RichTextLabel.push_list(level, type, capitalize, bullet) end

---@param data Object
---@param underline_mode RichTextLabel.MetaUnderline?  # Default = 1
---@param tooltip string?  # Default = 
function RichTextLabel.push_meta(data, underline_mode, tooltip) end

---@param description string
function RichTextLabel.push_hint(description) end

---@param language string
function RichTextLabel.push_language(language) end

---@param color Color?  # Default = (0.0, 0.0, 0.0, 0.0)
function RichTextLabel.push_underline(color) end

---@param color Color?  # Default = (0.0, 0.0, 0.0, 0.0)
function RichTextLabel.push_strikethrough(color) end

---@param columns integer
---@param inline_align InlineAlignment?  # Default = 0
---@param align_to_row integer?  # Default = -1
---@param name string?  # Default = 
function RichTextLabel.push_table(columns, inline_align, align_to_row, name) end

---@param string string
---@param font Font
---@param size integer
---@param dropcap_margins Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param color Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param outline_size integer?  # Default = 0
---@param outline_color Color?  # Default = (0.0, 0.0, 0.0, 0.0)
function RichTextLabel.push_dropcap(string, font, size, dropcap_margins, color, outline_size, outline_color) end

---@param column integer
---@param expand boolean
---@param ratio integer?  # Default = 1
---@param shrink boolean?  # Default = true
function RichTextLabel.set_table_column_expand(column, expand, ratio, shrink) end

---@param column integer
---@param name string
function RichTextLabel.set_table_column_name(column, name) end

---@param odd_row_bg Color
---@param even_row_bg Color
function RichTextLabel.set_cell_row_background_color(odd_row_bg, even_row_bg) end

---@param color Color
function RichTextLabel.set_cell_border_color(color) end

---@param min_size Vector2
---@param max_size Vector2
function RichTextLabel.set_cell_size_override(min_size, max_size) end

---@param padding Rect2
function RichTextLabel.set_cell_padding(padding) end

function RichTextLabel.push_cell() end

---@param fgcolor Color
function RichTextLabel.push_fgcolor(fgcolor) end

---@param bgcolor Color
function RichTextLabel.push_bgcolor(bgcolor) end

---@param effect RichTextEffect
---@param env table<any,any>
function RichTextLabel.push_customfx(effect, env) end

function RichTextLabel.push_context() end

function RichTextLabel.pop_context() end

function RichTextLabel.pop() end

function RichTextLabel.pop_all() end

function RichTextLabel.clear() end

---@param parser TextServer.StructuredTextParser
function RichTextLabel.set_structured_text_bidi_override(parser) end

---@return TextServer.StructuredTextParser
function RichTextLabel.get_structured_text_bidi_override() end

---@param args Array<any>
function RichTextLabel.set_structured_text_bidi_override_options(args) end

---@return Array<any>
function RichTextLabel.get_structured_text_bidi_override_options() end

---@param direction Control.TextDirection
function RichTextLabel.set_text_direction(direction) end

---@return Control.TextDirection
function RichTextLabel.get_text_direction() end

---@param language string
function RichTextLabel.set_language(language) end

---@return string
function RichTextLabel.get_language() end

---@param alignment HorizontalAlignment
function RichTextLabel.set_horizontal_alignment(alignment) end

---@return HorizontalAlignment
function RichTextLabel.get_horizontal_alignment() end

---@param alignment VerticalAlignment
function RichTextLabel.set_vertical_alignment(alignment) end

---@return VerticalAlignment
function RichTextLabel.get_vertical_alignment() end

---@param justification_flags TextServer.JustificationFlag
function RichTextLabel.set_justification_flags(justification_flags) end

---@return TextServer.JustificationFlag
function RichTextLabel.get_justification_flags() end

---@param tab_stops PackedFloat32Array
function RichTextLabel.set_tab_stops(tab_stops) end

---@return PackedFloat32Array
function RichTextLabel.get_tab_stops() end

---@param autowrap_mode TextServer.AutowrapMode
function RichTextLabel.set_autowrap_mode(autowrap_mode) end

---@return TextServer.AutowrapMode
function RichTextLabel.get_autowrap_mode() end

---@param autowrap_trim_flags TextServer.LineBreakFlag
function RichTextLabel.set_autowrap_trim_flags(autowrap_trim_flags) end

---@return TextServer.LineBreakFlag
function RichTextLabel.get_autowrap_trim_flags() end

---@param enable boolean
function RichTextLabel.set_meta_underline(enable) end

---@return boolean
function RichTextLabel.is_meta_underlined() end

---@param enable boolean
function RichTextLabel.set_hint_underline(enable) end

---@return boolean
function RichTextLabel.is_hint_underlined() end

---@param active boolean
function RichTextLabel.set_scroll_active(active) end

---@return boolean
function RichTextLabel.is_scroll_active() end

---@param follow boolean
function RichTextLabel.set_scroll_follow_visible_characters(follow) end

---@return boolean
function RichTextLabel.is_scroll_following_visible_characters() end

---@param follow boolean
function RichTextLabel.set_scroll_follow(follow) end

---@return boolean
function RichTextLabel.is_scroll_following() end

---@return VScrollBar
function RichTextLabel.get_v_scroll_bar() end

---@param line integer
function RichTextLabel.scroll_to_line(line) end

---@param paragraph integer
function RichTextLabel.scroll_to_paragraph(paragraph) end

function RichTextLabel.scroll_to_selection() end

---@param spaces integer
function RichTextLabel.set_tab_size(spaces) end

---@return integer
function RichTextLabel.get_tab_size() end

---@param enabled boolean
function RichTextLabel.set_fit_content(enabled) end

---@return boolean
function RichTextLabel.is_fit_content_enabled() end

---@param enabled boolean
function RichTextLabel.set_selection_enabled(enabled) end

---@return boolean
function RichTextLabel.is_selection_enabled() end

---@param enabled boolean
function RichTextLabel.set_context_menu_enabled(enabled) end

---@return boolean
function RichTextLabel.is_context_menu_enabled() end

---@param enabled boolean
function RichTextLabel.set_shortcut_keys_enabled(enabled) end

---@return boolean
function RichTextLabel.is_shortcut_keys_enabled() end

---@param enable boolean
function RichTextLabel.set_deselect_on_focus_loss_enabled(enable) end

---@return boolean
function RichTextLabel.is_deselect_on_focus_loss_enabled() end

---@param enable boolean
function RichTextLabel.set_drag_and_drop_selection_enabled(enable) end

---@return boolean
function RichTextLabel.is_drag_and_drop_selection_enabled() end

---@return integer
function RichTextLabel.get_selection_from() end

---@return integer
function RichTextLabel.get_selection_to() end

---@return number
function RichTextLabel.get_selection_line_offset() end

function RichTextLabel.select_all() end

---@return string
function RichTextLabel.get_selected_text() end

function RichTextLabel.deselect() end

---@param bbcode string
function RichTextLabel.parse_bbcode(bbcode) end

---@param bbcode string
function RichTextLabel.append_text(bbcode) end

---@return string
function RichTextLabel.get_text() end

---@return boolean
function RichTextLabel.is_ready() end

---@return boolean
function RichTextLabel.is_finished() end

---@param threaded boolean
function RichTextLabel.set_threaded(threaded) end

---@return boolean
function RichTextLabel.is_threaded() end

---@param delay_ms integer
function RichTextLabel.set_progress_bar_delay(delay_ms) end

---@return integer
function RichTextLabel.get_progress_bar_delay() end

---@param amount integer
function RichTextLabel.set_visible_characters(amount) end

---@return integer
function RichTextLabel.get_visible_characters() end

---@return TextServer.VisibleCharactersBehavior
function RichTextLabel.get_visible_characters_behavior() end

---@param behavior TextServer.VisibleCharactersBehavior
function RichTextLabel.set_visible_characters_behavior(behavior) end

---@param ratio number
function RichTextLabel.set_visible_ratio(ratio) end

---@return number
function RichTextLabel.get_visible_ratio() end

---@param character integer
---@return integer
function RichTextLabel.get_character_line(character) end

---@param character integer
---@return integer
function RichTextLabel.get_character_paragraph(character) end

---@return integer
function RichTextLabel.get_total_character_count() end

---@param enable boolean
function RichTextLabel.set_use_bbcode(enable) end

---@return boolean
function RichTextLabel.is_using_bbcode() end

---@return integer
function RichTextLabel.get_line_count() end

---@param line integer
---@return Vector2i
function RichTextLabel.get_line_range(line) end

---@return integer
function RichTextLabel.get_visible_line_count() end

---@return integer
function RichTextLabel.get_paragraph_count() end

---@return integer
function RichTextLabel.get_visible_paragraph_count() end

---@return integer
function RichTextLabel.get_content_height() end

---@return integer
function RichTextLabel.get_content_width() end

---@param line integer
---@return integer
function RichTextLabel.get_line_height(line) end

---@param line integer
---@return integer
function RichTextLabel.get_line_width(line) end

---@return Rect2i
function RichTextLabel.get_visible_content_rect() end

---@param line integer
---@return number
function RichTextLabel.get_line_offset(line) end

---@param paragraph integer
---@return number
function RichTextLabel.get_paragraph_offset(paragraph) end

---@param expressions PackedStringArray
---@return table<any,any>
function RichTextLabel.parse_expressions_for_values(expressions) end

---@param effects Array<any>
function RichTextLabel.set_effects(effects) end

---@return Array<any>
function RichTextLabel.get_effects() end

---@param effect Object
function RichTextLabel.install_effect(effect) end

function RichTextLabel.reload_effects() end

---@return PopupMenu
function RichTextLabel.get_menu() end

---@return boolean
function RichTextLabel.is_menu_visible() end

---@param option integer
function RichTextLabel.menu_option(option) end
