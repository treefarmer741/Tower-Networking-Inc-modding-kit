---@meta _
-- Generated API for game version 0.9.1

---@class Tree : Control
---@field columns integer
---@field column_titles_visible boolean
---@field allow_reselect boolean
---@field allow_rmb_select boolean
---@field allow_search boolean
---@field hide_folding boolean
---@field enable_recursive_folding boolean
---@field hide_root boolean
---@field drop_mode_flags integer
---@field select_mode integer
---@field scroll_horizontal_enabled boolean
---@field scroll_vertical_enabled boolean
---@field auto_tooltip boolean
local Tree = {}

function Tree.clear() end

---@param parent TreeItem?  # Default = <null>
---@param index integer?  # Default = -1
---@return TreeItem
function Tree.create_item(parent, index) end

---@return TreeItem
function Tree.get_root() end

---@param column integer
---@param min_width integer
function Tree.set_column_custom_minimum_width(column, min_width) end

---@param column integer
---@param expand boolean
function Tree.set_column_expand(column, expand) end

---@param column integer
---@param ratio integer
function Tree.set_column_expand_ratio(column, ratio) end

---@param column integer
---@param enable boolean
function Tree.set_column_clip_content(column, enable) end

---@param column integer
---@return boolean
function Tree.is_column_expanding(column) end

---@param column integer
---@return boolean
function Tree.is_column_clipping_content(column) end

---@param column integer
---@return integer
function Tree.get_column_expand_ratio(column) end

---@param column integer
---@return integer
function Tree.get_column_width(column) end

---@param enable boolean
function Tree.set_hide_root(enable) end

---@return boolean
function Tree.is_root_hidden() end

---@param from TreeItem
---@return TreeItem
function Tree.get_next_selected(from) end

---@return TreeItem
function Tree.get_selected() end

---@param item TreeItem
---@param column integer
function Tree.set_selected(item, column) end

---@return integer
function Tree.get_selected_column() end

---@return integer
function Tree.get_pressed_button() end

---@param mode Tree.SelectMode
function Tree.set_select_mode(mode) end

---@return Tree.SelectMode
function Tree.get_select_mode() end

function Tree.deselect_all() end

---@param amount integer
function Tree.set_columns(amount) end

---@return integer
function Tree.get_columns() end

---@return TreeItem
function Tree.get_edited() end

---@return integer
function Tree.get_edited_column() end

---@param force_edit boolean?  # Default = false
---@return boolean
function Tree.edit_selected(force_edit) end

---@return Rect2
function Tree.get_custom_popup_rect() end

---@param item TreeItem
---@param column integer?  # Default = -1
---@param button_index integer?  # Default = -1
---@return Rect2
function Tree.get_item_area_rect(item, column, button_index) end

---@param position Vector2
---@return TreeItem
function Tree.get_item_at_position(position) end

---@param position Vector2
---@return integer
function Tree.get_column_at_position(position) end

---@param position Vector2
---@return integer
function Tree.get_drop_section_at_position(position) end

---@param position Vector2
---@return integer
function Tree.get_button_id_at_position(position) end

function Tree.ensure_cursor_is_visible() end

---@param visible boolean
function Tree.set_column_titles_visible(visible) end

---@return boolean
function Tree.are_column_titles_visible() end

---@param column integer
---@param title string
function Tree.set_column_title(column, title) end

---@param column integer
---@return string
function Tree.get_column_title(column) end

---@param column integer
---@param title_alignment HorizontalAlignment
function Tree.set_column_title_alignment(column, title_alignment) end

---@param column integer
---@return HorizontalAlignment
function Tree.get_column_title_alignment(column) end

---@param column integer
---@param direction Control.TextDirection
function Tree.set_column_title_direction(column, direction) end

---@param column integer
---@return Control.TextDirection
function Tree.get_column_title_direction(column) end

---@param column integer
---@param language string
function Tree.set_column_title_language(column, language) end

---@param column integer
---@return string
function Tree.get_column_title_language(column) end

---@return Vector2
function Tree.get_scroll() end

---@param item TreeItem
---@param center_on_item boolean?  # Default = false
function Tree.scroll_to_item(item, center_on_item) end

---@param h_scroll boolean
function Tree.set_h_scroll_enabled(h_scroll) end

---@return boolean
function Tree.is_h_scroll_enabled() end

---@param h_scroll boolean
function Tree.set_v_scroll_enabled(h_scroll) end

---@return boolean
function Tree.is_v_scroll_enabled() end

---@param hide boolean
function Tree.set_hide_folding(hide) end

---@return boolean
function Tree.is_folding_hidden() end

---@param enable boolean
function Tree.set_enable_recursive_folding(enable) end

---@return boolean
function Tree.is_recursive_folding_enabled() end

---@param flags integer
function Tree.set_drop_mode_flags(flags) end

---@return integer
function Tree.get_drop_mode_flags() end

---@param allow boolean
function Tree.set_allow_rmb_select(allow) end

---@return boolean
function Tree.get_allow_rmb_select() end

---@param allow boolean
function Tree.set_allow_reselect(allow) end

---@return boolean
function Tree.get_allow_reselect() end

---@param allow boolean
function Tree.set_allow_search(allow) end

---@return boolean
function Tree.get_allow_search() end

---@param enable boolean
function Tree.set_auto_tooltip(enable) end

---@return boolean
function Tree.is_auto_tooltip_enabled() end
