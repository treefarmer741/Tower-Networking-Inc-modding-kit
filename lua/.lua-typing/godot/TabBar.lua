---@meta _
-- Generated API for game version 0.9.1

---@class TabBar : Control
---@field current_tab integer
---@field tab_alignment integer
---@field clip_tabs boolean
---@field close_with_middle_mouse boolean
---@field tab_close_display_policy integer
---@field max_tab_width integer
---@field scrolling_enabled boolean
---@field drag_to_rearrange_enabled boolean
---@field tabs_rearrange_group integer
---@field scroll_to_selected boolean
---@field select_with_rmb boolean
---@field deselect_enabled boolean
---@field tab_count Tabs,tab_
local TabBar = {}

---@param count integer
function TabBar.set_tab_count(count) end

---@return integer
function TabBar.get_tab_count() end

---@param tab_idx integer
function TabBar.set_current_tab(tab_idx) end

---@return integer
function TabBar.get_current_tab() end

---@return integer
function TabBar.get_previous_tab() end

---@return boolean
function TabBar.select_previous_available() end

---@return boolean
function TabBar.select_next_available() end

---@param tab_idx integer
---@param title string
function TabBar.set_tab_title(tab_idx, title) end

---@param tab_idx integer
---@return string
function TabBar.get_tab_title(tab_idx) end

---@param tab_idx integer
---@param tooltip string
function TabBar.set_tab_tooltip(tab_idx, tooltip) end

---@param tab_idx integer
---@return string
function TabBar.get_tab_tooltip(tab_idx) end

---@param tab_idx integer
---@param direction Control.TextDirection
function TabBar.set_tab_text_direction(tab_idx, direction) end

---@param tab_idx integer
---@return Control.TextDirection
function TabBar.get_tab_text_direction(tab_idx) end

---@param tab_idx integer
---@param language string
function TabBar.set_tab_language(tab_idx, language) end

---@param tab_idx integer
---@return string
function TabBar.get_tab_language(tab_idx) end

---@param tab_idx integer
---@param icon Texture2D
function TabBar.set_tab_icon(tab_idx, icon) end

---@param tab_idx integer
---@return Texture2D
function TabBar.get_tab_icon(tab_idx) end

---@param tab_idx integer
---@param width integer
function TabBar.set_tab_icon_max_width(tab_idx, width) end

---@param tab_idx integer
---@return integer
function TabBar.get_tab_icon_max_width(tab_idx) end

---@param tab_idx integer
---@param icon Texture2D
function TabBar.set_tab_button_icon(tab_idx, icon) end

---@param tab_idx integer
---@return Texture2D
function TabBar.get_tab_button_icon(tab_idx) end

---@param tab_idx integer
---@param disabled boolean
function TabBar.set_tab_disabled(tab_idx, disabled) end

---@param tab_idx integer
---@return boolean
function TabBar.is_tab_disabled(tab_idx) end

---@param tab_idx integer
---@param hidden boolean
function TabBar.set_tab_hidden(tab_idx, hidden) end

---@param tab_idx integer
---@return boolean
function TabBar.is_tab_hidden(tab_idx) end

---@param tab_idx integer
---@param metadata Object
function TabBar.set_tab_metadata(tab_idx, metadata) end

---@param tab_idx integer
---@return Object
function TabBar.get_tab_metadata(tab_idx) end

---@param tab_idx integer
function TabBar.remove_tab(tab_idx) end

---@param title string?  # Default = 
---@param icon Texture2D?  # Default = <Object#null>
function TabBar.add_tab(title, icon) end

---@param point Vector2
---@return integer
function TabBar.get_tab_idx_at_point(point) end

---@param alignment TabBar.AlignmentMode
function TabBar.set_tab_alignment(alignment) end

---@return TabBar.AlignmentMode
function TabBar.get_tab_alignment() end

---@param clip_tabs boolean
function TabBar.set_clip_tabs(clip_tabs) end

---@return boolean
function TabBar.get_clip_tabs() end

---@return integer
function TabBar.get_tab_offset() end

---@return boolean
function TabBar.get_offset_buttons_visible() end

---@param idx integer
function TabBar.ensure_tab_visible(idx) end

---@param tab_idx integer
---@return Rect2
function TabBar.get_tab_rect(tab_idx) end

---@param from integer
---@param to integer
function TabBar.move_tab(from, to) end

---@param enabled boolean
function TabBar.set_close_with_middle_mouse(enabled) end

---@return boolean
function TabBar.get_close_with_middle_mouse() end

---@param policy TabBar.CloseButtonDisplayPolicy
function TabBar.set_tab_close_display_policy(policy) end

---@return TabBar.CloseButtonDisplayPolicy
function TabBar.get_tab_close_display_policy() end

---@param width integer
function TabBar.set_max_tab_width(width) end

---@return integer
function TabBar.get_max_tab_width() end

---@param enabled boolean
function TabBar.set_scrolling_enabled(enabled) end

---@return boolean
function TabBar.get_scrolling_enabled() end

---@param enabled boolean
function TabBar.set_drag_to_rearrange_enabled(enabled) end

---@return boolean
function TabBar.get_drag_to_rearrange_enabled() end

---@param group_id integer
function TabBar.set_tabs_rearrange_group(group_id) end

---@return integer
function TabBar.get_tabs_rearrange_group() end

---@param enabled boolean
function TabBar.set_scroll_to_selected(enabled) end

---@return boolean
function TabBar.get_scroll_to_selected() end

---@param enabled boolean
function TabBar.set_select_with_rmb(enabled) end

---@return boolean
function TabBar.get_select_with_rmb() end

---@param enabled boolean
function TabBar.set_deselect_enabled(enabled) end

---@return boolean
function TabBar.get_deselect_enabled() end

function TabBar.clear_tabs() end
