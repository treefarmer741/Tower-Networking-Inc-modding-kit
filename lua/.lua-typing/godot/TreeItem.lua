---@meta _
-- Generated API for game version 0.10.0

---@class TreeItem : Object
---@field collapsed boolean
---@field visible boolean
---@field disable_folding boolean
---@field custom_minimum_height integer
local TreeItem = {}

---@param column integer
---@param mode TreeItem.TreeCellMode
function TreeItem.set_cell_mode(column, mode) end

---@param column integer
---@return TreeItem.TreeCellMode
function TreeItem.get_cell_mode(column) end

---@param column integer
---@param mode Node.AutoTranslateMode
function TreeItem.set_auto_translate_mode(column, mode) end

---@param column integer
---@return Node.AutoTranslateMode
function TreeItem.get_auto_translate_mode(column) end

---@param column integer
---@param multiline boolean
function TreeItem.set_edit_multiline(column, multiline) end

---@param column integer
---@return boolean
function TreeItem.is_edit_multiline(column) end

---@param column integer
---@param checked boolean
function TreeItem.set_checked(column, checked) end

---@param column integer
---@param indeterminate boolean
function TreeItem.set_indeterminate(column, indeterminate) end

---@param column integer
---@return boolean
function TreeItem.is_checked(column) end

---@param column integer
---@return boolean
function TreeItem.is_indeterminate(column) end

---@param column integer
---@param emit_signal boolean?  # Default = true
function TreeItem.propagate_check(column, emit_signal) end

---@param column integer
---@param text string
function TreeItem.set_text(column, text) end

---@param column integer
---@return string
function TreeItem.get_text(column) end

---@param column integer
---@param description string
function TreeItem.set_description(column, description) end

---@param column integer
---@return string
function TreeItem.get_description(column) end

---@param column integer
---@param direction Control.TextDirection
function TreeItem.set_text_direction(column, direction) end

---@param column integer
---@return Control.TextDirection
function TreeItem.get_text_direction(column) end

---@param column integer
---@param autowrap_mode TextServer.AutowrapMode
function TreeItem.set_autowrap_mode(column, autowrap_mode) end

---@param column integer
---@return TextServer.AutowrapMode
function TreeItem.get_autowrap_mode(column) end

---@param column integer
---@param overrun_behavior TextServer.OverrunBehavior
function TreeItem.set_text_overrun_behavior(column, overrun_behavior) end

---@param column integer
---@return TextServer.OverrunBehavior
function TreeItem.get_text_overrun_behavior(column) end

---@param column integer
---@param parser TextServer.StructuredTextParser
function TreeItem.set_structured_text_bidi_override(column, parser) end

---@param column integer
---@return TextServer.StructuredTextParser
function TreeItem.get_structured_text_bidi_override(column) end

---@param column integer
---@param args Array<any>
function TreeItem.set_structured_text_bidi_override_options(column, args) end

---@param column integer
---@return Array<any>
function TreeItem.get_structured_text_bidi_override_options(column) end

---@param column integer
---@param language string
function TreeItem.set_language(column, language) end

---@param column integer
---@return string
function TreeItem.get_language(column) end

---@param column integer
---@param text string
function TreeItem.set_suffix(column, text) end

---@param column integer
---@return string
function TreeItem.get_suffix(column) end

---@param column integer
---@param texture Texture2D
function TreeItem.set_icon(column, texture) end

---@param column integer
---@return Texture2D
function TreeItem.get_icon(column) end

---@param column integer
---@param texture Texture2D
function TreeItem.set_icon_overlay(column, texture) end

---@param column integer
---@return Texture2D
function TreeItem.get_icon_overlay(column) end

---@param column integer
---@param region Rect2
function TreeItem.set_icon_region(column, region) end

---@param column integer
---@return Rect2
function TreeItem.get_icon_region(column) end

---@param column integer
---@param width integer
function TreeItem.set_icon_max_width(column, width) end

---@param column integer
---@return integer
function TreeItem.get_icon_max_width(column) end

---@param column integer
---@param modulate Color
function TreeItem.set_icon_modulate(column, modulate) end

---@param column integer
---@return Color
function TreeItem.get_icon_modulate(column) end

---@param column integer
---@param value number
function TreeItem.set_range(column, value) end

---@param column integer
---@return number
function TreeItem.get_range(column) end

---@param column integer
---@param min number
---@param max number
---@param step number
---@param expr boolean?  # Default = false
function TreeItem.set_range_config(column, min, max, step, expr) end

---@param column integer
---@return table<any,any>
function TreeItem.get_range_config(column) end

---@param column integer
---@param meta Object
function TreeItem.set_metadata(column, meta) end

---@param column integer
---@return Object
function TreeItem.get_metadata(column) end

---@param column integer
---@param object Object
---@param callback string
function TreeItem.set_custom_draw(column, object, callback) end

---@param column integer
---@param callback (Callable|function)
function TreeItem.set_custom_draw_callback(column, callback) end

---@param column integer
---@return (Callable|function)
function TreeItem.get_custom_draw_callback(column) end

---@param enable boolean
function TreeItem.set_collapsed(enable) end

---@return boolean
function TreeItem.is_collapsed() end

---@param enable boolean
function TreeItem.set_collapsed_recursive(enable) end

---@param only_visible boolean?  # Default = false
---@return boolean
function TreeItem.is_any_collapsed(only_visible) end

---@param enable boolean
function TreeItem.set_visible(enable) end

---@return boolean
function TreeItem.is_visible() end

---@return boolean
function TreeItem.is_visible_in_tree() end

function TreeItem.uncollapse_tree() end

---@param height integer
function TreeItem.set_custom_minimum_height(height) end

---@return integer
function TreeItem.get_custom_minimum_height() end

---@param column integer
---@param selectable boolean
function TreeItem.set_selectable(column, selectable) end

---@param column integer
---@return boolean
function TreeItem.is_selectable(column) end

---@param column integer
---@return boolean
function TreeItem.is_selected(column) end

---@param column integer
function TreeItem.select(column) end

---@param column integer
function TreeItem.deselect(column) end

---@param column integer
---@param enabled boolean
function TreeItem.set_editable(column, enabled) end

---@param column integer
---@return boolean
function TreeItem.is_editable(column) end

---@param column integer
---@param color Color
function TreeItem.set_custom_color(column, color) end

---@param column integer
---@return Color
function TreeItem.get_custom_color(column) end

---@param column integer
function TreeItem.clear_custom_color(column) end

---@param column integer
---@param font Font
function TreeItem.set_custom_font(column, font) end

---@param column integer
---@return Font
function TreeItem.get_custom_font(column) end

---@param column integer
---@param font_size integer
function TreeItem.set_custom_font_size(column, font_size) end

---@param column integer
---@return integer
function TreeItem.get_custom_font_size(column) end

---@param column integer
---@param color Color
---@param just_outline boolean?  # Default = false
function TreeItem.set_custom_bg_color(column, color, just_outline) end

---@param column integer
function TreeItem.clear_custom_bg_color(column) end

---@param column integer
---@return Color
function TreeItem.get_custom_bg_color(column) end

---@param column integer
---@param enable boolean
function TreeItem.set_custom_as_button(column, enable) end

---@param column integer
---@return boolean
function TreeItem.is_custom_set_as_button(column) end

function TreeItem.clear_buttons() end

---@param column integer
---@param button Texture2D
---@param id integer?  # Default = -1
---@param disabled boolean?  # Default = false
---@param tooltip_text string?  # Default = 
---@param description string?  # Default = 
function TreeItem.add_button(column, button, id, disabled, tooltip_text, description) end

---@param column integer
---@return integer
function TreeItem.get_button_count(column) end

---@param column integer
---@param button_index integer
---@return string
function TreeItem.get_button_tooltip_text(column, button_index) end

---@param column integer
---@param button_index integer
---@return integer
function TreeItem.get_button_id(column, button_index) end

---@param column integer
---@param id integer
---@return integer
function TreeItem.get_button_by_id(column, id) end

---@param column integer
---@param id integer
---@return Color
function TreeItem.get_button_color(column, id) end

---@param column integer
---@param button_index integer
---@return Texture2D
function TreeItem.get_button(column, button_index) end

---@param column integer
---@param button_index integer
---@param tooltip string
function TreeItem.set_button_tooltip_text(column, button_index, tooltip) end

---@param column integer
---@param button_index integer
---@param button Texture2D
function TreeItem.set_button(column, button_index, button) end

---@param column integer
---@param button_index integer
function TreeItem.erase_button(column, button_index) end

---@param column integer
---@param button_index integer
---@param description string
function TreeItem.set_button_description(column, button_index, description) end

---@param column integer
---@param button_index integer
---@param disabled boolean
function TreeItem.set_button_disabled(column, button_index, disabled) end

---@param column integer
---@param button_index integer
---@param color Color
function TreeItem.set_button_color(column, button_index, color) end

---@param column integer
---@param button_index integer
---@return boolean
function TreeItem.is_button_disabled(column, button_index) end

---@param column integer
---@param tooltip string
function TreeItem.set_tooltip_text(column, tooltip) end

---@param column integer
---@return string
function TreeItem.get_tooltip_text(column) end

---@param column integer
---@param text_alignment HorizontalAlignment
function TreeItem.set_text_alignment(column, text_alignment) end

---@param column integer
---@return HorizontalAlignment
function TreeItem.get_text_alignment(column) end

---@param column integer
---@param enable boolean
function TreeItem.set_expand_right(column, enable) end

---@param column integer
---@return boolean
function TreeItem.get_expand_right(column) end

---@param disable boolean
function TreeItem.set_disable_folding(disable) end

---@return boolean
function TreeItem.is_folding_disabled() end

---@param index integer?  # Default = -1
---@return TreeItem
function TreeItem.create_child(index) end

---@param child TreeItem
function TreeItem.add_child(child) end

---@param child TreeItem
function TreeItem.remove_child(child) end

---@return Tree
function TreeItem.get_tree() end

---@return TreeItem
function TreeItem.get_next() end

---@return TreeItem
function TreeItem.get_prev() end

---@return TreeItem
function TreeItem.get_parent() end

---@return TreeItem
function TreeItem.get_first_child() end

---@param wrap boolean?  # Default = false
---@return TreeItem
function TreeItem.get_next_in_tree(wrap) end

---@param wrap boolean?  # Default = false
---@return TreeItem
function TreeItem.get_prev_in_tree(wrap) end

---@param wrap boolean?  # Default = false
---@return TreeItem
function TreeItem.get_next_visible(wrap) end

---@param wrap boolean?  # Default = false
---@return TreeItem
function TreeItem.get_prev_visible(wrap) end

---@param index integer
---@return TreeItem
function TreeItem.get_child(index) end

---@return integer
function TreeItem.get_child_count() end

---@return Array<TreeItem>
function TreeItem.get_children() end

---@return integer
function TreeItem.get_index() end

---@param item TreeItem
function TreeItem.move_before(item) end

---@param item TreeItem
function TreeItem.move_after(item) end

---@param method string
function TreeItem.call_recursive(method) end
