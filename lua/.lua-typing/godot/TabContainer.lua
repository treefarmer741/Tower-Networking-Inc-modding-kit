---@meta _
-- Generated API for game version 0.10.0

---@class TabContainer : Container
---@field tab_alignment integer
---@field current_tab integer
---@field tabs_position integer
---@field clip_tabs boolean
---@field tabs_visible boolean
---@field all_tabs_in_front boolean
---@field drag_to_rearrange_enabled boolean
---@field tabs_rearrange_group integer
---@field use_hidden_tabs_for_min_size boolean
---@field tab_focus_mode integer
---@field deselect_enabled boolean
local TabContainer = {}

---@return integer
function TabContainer.get_tab_count() end

---@param tab_idx integer
function TabContainer.set_current_tab(tab_idx) end

---@return integer
function TabContainer.get_current_tab() end

---@return integer
function TabContainer.get_previous_tab() end

---@return boolean
function TabContainer.select_previous_available() end

---@return boolean
function TabContainer.select_next_available() end

---@return Control
function TabContainer.get_current_tab_control() end

---@return TabBar
function TabContainer.get_tab_bar() end

---@param tab_idx integer
---@return Control
function TabContainer.get_tab_control(tab_idx) end

---@param alignment TabBar.AlignmentMode
function TabContainer.set_tab_alignment(alignment) end

---@return TabBar.AlignmentMode
function TabContainer.get_tab_alignment() end

---@param tabs_position TabContainer.TabPosition
function TabContainer.set_tabs_position(tabs_position) end

---@return TabContainer.TabPosition
function TabContainer.get_tabs_position() end

---@param clip_tabs boolean
function TabContainer.set_clip_tabs(clip_tabs) end

---@return boolean
function TabContainer.get_clip_tabs() end

---@param visible boolean
function TabContainer.set_tabs_visible(visible) end

---@return boolean
function TabContainer.are_tabs_visible() end

---@param is_front boolean
function TabContainer.set_all_tabs_in_front(is_front) end

---@return boolean
function TabContainer.is_all_tabs_in_front() end

---@param tab_idx integer
---@param title string
function TabContainer.set_tab_title(tab_idx, title) end

---@param tab_idx integer
---@return string
function TabContainer.get_tab_title(tab_idx) end

---@param tab_idx integer
---@param tooltip string
function TabContainer.set_tab_tooltip(tab_idx, tooltip) end

---@param tab_idx integer
---@return string
function TabContainer.get_tab_tooltip(tab_idx) end

---@param tab_idx integer
---@param icon Texture2D
function TabContainer.set_tab_icon(tab_idx, icon) end

---@param tab_idx integer
---@return Texture2D
function TabContainer.get_tab_icon(tab_idx) end

---@param tab_idx integer
---@param width integer
function TabContainer.set_tab_icon_max_width(tab_idx, width) end

---@param tab_idx integer
---@return integer
function TabContainer.get_tab_icon_max_width(tab_idx) end

---@param tab_idx integer
---@param disabled boolean
function TabContainer.set_tab_disabled(tab_idx, disabled) end

---@param tab_idx integer
---@return boolean
function TabContainer.is_tab_disabled(tab_idx) end

---@param tab_idx integer
---@param hidden boolean
function TabContainer.set_tab_hidden(tab_idx, hidden) end

---@param tab_idx integer
---@return boolean
function TabContainer.is_tab_hidden(tab_idx) end

---@param tab_idx integer
---@param metadata Object
function TabContainer.set_tab_metadata(tab_idx, metadata) end

---@param tab_idx integer
---@return Object
function TabContainer.get_tab_metadata(tab_idx) end

---@param tab_idx integer
---@param icon Texture2D
function TabContainer.set_tab_button_icon(tab_idx, icon) end

---@param tab_idx integer
---@return Texture2D
function TabContainer.get_tab_button_icon(tab_idx) end

---@param point Vector2
---@return integer
function TabContainer.get_tab_idx_at_point(point) end

---@param control Control
---@return integer
function TabContainer.get_tab_idx_from_control(control) end

---@param popup Node
function TabContainer.set_popup(popup) end

---@return Popup
function TabContainer.get_popup() end

---@param enabled boolean
function TabContainer.set_drag_to_rearrange_enabled(enabled) end

---@return boolean
function TabContainer.get_drag_to_rearrange_enabled() end

---@param group_id integer
function TabContainer.set_tabs_rearrange_group(group_id) end

---@return integer
function TabContainer.get_tabs_rearrange_group() end

---@param enabled boolean
function TabContainer.set_use_hidden_tabs_for_min_size(enabled) end

---@return boolean
function TabContainer.get_use_hidden_tabs_for_min_size() end

---@param focus_mode Control.FocusMode
function TabContainer.set_tab_focus_mode(focus_mode) end

---@return Control.FocusMode
function TabContainer.get_tab_focus_mode() end

---@param enabled boolean
function TabContainer.set_deselect_enabled(enabled) end

---@return boolean
function TabContainer.get_deselect_enabled() end
