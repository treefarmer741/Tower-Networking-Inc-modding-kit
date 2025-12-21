---@meta _
-- Generated API for game version 0.9.1

---@class ItemList : Control
---@field select_mode integer
---@field allow_reselect boolean
---@field allow_rmb_select boolean
---@field allow_search boolean
---@field max_text_lines integer
---@field auto_width boolean
---@field auto_height boolean
---@field text_overrun_behavior integer
---@field wraparound_items boolean
---@field item_count Items,item_
---@field max_columns integer
---@field same_column_width boolean
---@field fixed_column_width integer
---@field icon_mode integer
---@field icon_scale number
---@field fixed_icon_size Vector2i
local ItemList = {}

---@param text string
---@param icon Texture2D?  # Default = <null>
---@param selectable boolean?  # Default = true
---@return integer
function ItemList.add_item(text, icon, selectable) end

---@param icon Texture2D
---@param selectable boolean?  # Default = true
---@return integer
function ItemList.add_icon_item(icon, selectable) end

---@param idx integer
---@param text string
function ItemList.set_item_text(idx, text) end

---@param idx integer
---@return string
function ItemList.get_item_text(idx) end

---@param idx integer
---@param icon Texture2D
function ItemList.set_item_icon(idx, icon) end

---@param idx integer
---@return Texture2D
function ItemList.get_item_icon(idx) end

---@param idx integer
---@param direction Control.TextDirection
function ItemList.set_item_text_direction(idx, direction) end

---@param idx integer
---@return Control.TextDirection
function ItemList.get_item_text_direction(idx) end

---@param idx integer
---@param language string
function ItemList.set_item_language(idx, language) end

---@param idx integer
---@return string
function ItemList.get_item_language(idx) end

---@param idx integer
---@param mode Node.AutoTranslateMode
function ItemList.set_item_auto_translate_mode(idx, mode) end

---@param idx integer
---@return Node.AutoTranslateMode
function ItemList.get_item_auto_translate_mode(idx) end

---@param idx integer
---@param transposed boolean
function ItemList.set_item_icon_transposed(idx, transposed) end

---@param idx integer
---@return boolean
function ItemList.is_item_icon_transposed(idx) end

---@param idx integer
---@param rect Rect2
function ItemList.set_item_icon_region(idx, rect) end

---@param idx integer
---@return Rect2
function ItemList.get_item_icon_region(idx) end

---@param idx integer
---@param modulate Color
function ItemList.set_item_icon_modulate(idx, modulate) end

---@param idx integer
---@return Color
function ItemList.get_item_icon_modulate(idx) end

---@param idx integer
---@param selectable boolean
function ItemList.set_item_selectable(idx, selectable) end

---@param idx integer
---@return boolean
function ItemList.is_item_selectable(idx) end

---@param idx integer
---@param disabled boolean
function ItemList.set_item_disabled(idx, disabled) end

---@param idx integer
---@return boolean
function ItemList.is_item_disabled(idx) end

---@param idx integer
---@param metadata Object
function ItemList.set_item_metadata(idx, metadata) end

---@param idx integer
---@return Object
function ItemList.get_item_metadata(idx) end

---@param idx integer
---@param custom_bg_color Color
function ItemList.set_item_custom_bg_color(idx, custom_bg_color) end

---@param idx integer
---@return Color
function ItemList.get_item_custom_bg_color(idx) end

---@param idx integer
---@param custom_fg_color Color
function ItemList.set_item_custom_fg_color(idx, custom_fg_color) end

---@param idx integer
---@return Color
function ItemList.get_item_custom_fg_color(idx) end

---@param idx integer
---@param expand boolean?  # Default = true
---@return Rect2
function ItemList.get_item_rect(idx, expand) end

---@param idx integer
---@param enable boolean
function ItemList.set_item_tooltip_enabled(idx, enable) end

---@param idx integer
---@return boolean
function ItemList.is_item_tooltip_enabled(idx) end

---@param idx integer
---@param tooltip string
function ItemList.set_item_tooltip(idx, tooltip) end

---@param idx integer
---@return string
function ItemList.get_item_tooltip(idx) end

---@param idx integer
---@param single boolean?  # Default = true
function ItemList.select(idx, single) end

---@param idx integer
function ItemList.deselect(idx) end

function ItemList.deselect_all() end

---@param idx integer
---@return boolean
function ItemList.is_selected(idx) end

---@return PackedInt32Array
function ItemList.get_selected_items() end

---@param from_idx integer
---@param to_idx integer
function ItemList.move_item(from_idx, to_idx) end

---@param count integer
function ItemList.set_item_count(count) end

---@return integer
function ItemList.get_item_count() end

---@param idx integer
function ItemList.remove_item(idx) end

function ItemList.clear() end

function ItemList.sort_items_by_text() end

---@param width integer
function ItemList.set_fixed_column_width(width) end

---@return integer
function ItemList.get_fixed_column_width() end

---@param enable boolean
function ItemList.set_same_column_width(enable) end

---@return boolean
function ItemList.is_same_column_width() end

---@param lines integer
function ItemList.set_max_text_lines(lines) end

---@return integer
function ItemList.get_max_text_lines() end

---@param amount integer
function ItemList.set_max_columns(amount) end

---@return integer
function ItemList.get_max_columns() end

---@param mode ItemList.SelectMode
function ItemList.set_select_mode(mode) end

---@return ItemList.SelectMode
function ItemList.get_select_mode() end

---@param mode ItemList.IconMode
function ItemList.set_icon_mode(mode) end

---@return ItemList.IconMode
function ItemList.get_icon_mode() end

---@param size Vector2i
function ItemList.set_fixed_icon_size(size) end

---@return Vector2i
function ItemList.get_fixed_icon_size() end

---@param scale number
function ItemList.set_icon_scale(scale) end

---@return number
function ItemList.get_icon_scale() end

---@param allow boolean
function ItemList.set_allow_rmb_select(allow) end

---@return boolean
function ItemList.get_allow_rmb_select() end

---@param allow boolean
function ItemList.set_allow_reselect(allow) end

---@return boolean
function ItemList.get_allow_reselect() end

---@param allow boolean
function ItemList.set_allow_search(allow) end

---@return boolean
function ItemList.get_allow_search() end

---@param enable boolean
function ItemList.set_auto_width(enable) end

---@return boolean
function ItemList.has_auto_width() end

---@param enable boolean
function ItemList.set_auto_height(enable) end

---@return boolean
function ItemList.has_auto_height() end

---@return boolean
function ItemList.is_anything_selected() end

---@param position Vector2
---@param exact boolean?  # Default = false
---@return integer
function ItemList.get_item_at_position(position, exact) end

function ItemList.ensure_current_is_visible() end

---@return VScrollBar
function ItemList.get_v_scroll_bar() end

---@return HScrollBar
function ItemList.get_h_scroll_bar() end

---@param overrun_behavior TextServer.OverrunBehavior
function ItemList.set_text_overrun_behavior(overrun_behavior) end

---@return TextServer.OverrunBehavior
function ItemList.get_text_overrun_behavior() end

---@param enable boolean
function ItemList.set_wraparound_items(enable) end

---@return boolean
function ItemList.has_wraparound_items() end

function ItemList.force_update_list_size() end
