---@meta _
-- Generated API for game version 0.12.1

---@class SplitContainer : Container
---@field split_offsets PackedInt32Array
---@field collapsed boolean
---@field dragging_enabled boolean
---@field dragger_visibility integer
---@field vertical boolean
---@field touch_dragger_enabled boolean
---@field drag_area_margin_begin integer
---@field drag_area_margin_end integer
---@field drag_area_offset integer
---@field drag_area_highlight_in_editor boolean
---@field split_offset integer
local SplitContainer = {}

---@param offsets PackedInt32Array
function SplitContainer.set_split_offsets(offsets) end

---@return PackedInt32Array
function SplitContainer.get_split_offsets() end

---@param priority_index integer?  # Default = 0
function SplitContainer.clamp_split_offset(priority_index) end

---@param collapsed boolean
function SplitContainer.set_collapsed(collapsed) end

---@return boolean
function SplitContainer.is_collapsed() end

---@param mode SplitContainer.DraggerVisibility
function SplitContainer.set_dragger_visibility(mode) end

---@return SplitContainer.DraggerVisibility
function SplitContainer.get_dragger_visibility() end

---@param vertical boolean
function SplitContainer.set_vertical(vertical) end

---@return boolean
function SplitContainer.is_vertical() end

---@param dragging_enabled boolean
function SplitContainer.set_dragging_enabled(dragging_enabled) end

---@return boolean
function SplitContainer.is_dragging_enabled() end

---@param margin integer
function SplitContainer.set_drag_area_margin_begin(margin) end

---@return integer
function SplitContainer.get_drag_area_margin_begin() end

---@param margin integer
function SplitContainer.set_drag_area_margin_end(margin) end

---@return integer
function SplitContainer.get_drag_area_margin_end() end

---@param offset integer
function SplitContainer.set_drag_area_offset(offset) end

---@return integer
function SplitContainer.get_drag_area_offset() end

---@param drag_area_highlight_in_editor boolean
function SplitContainer.set_drag_area_highlight_in_editor(drag_area_highlight_in_editor) end

---@return boolean
function SplitContainer.is_drag_area_highlight_in_editor_enabled() end

---@return Array<Control>
function SplitContainer.get_drag_area_controls() end

---@param enabled boolean
function SplitContainer.set_touch_dragger_enabled(enabled) end

---@return boolean
function SplitContainer.is_touch_dragger_enabled() end

---@return Control
function SplitContainer.get_drag_area_control() end

---@param offset integer
function SplitContainer.set_split_offset(offset) end

---@return integer
function SplitContainer.get_split_offset() end
