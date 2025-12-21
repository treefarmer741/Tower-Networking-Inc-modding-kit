---@meta _
-- Generated API for game version 0.9.1

---@class FlowContainer : Container
---@field alignment integer
---@field last_wrap_alignment integer
---@field vertical boolean
---@field reverse_fill boolean
local FlowContainer = {}

---@return integer
function FlowContainer.get_line_count() end

---@param alignment FlowContainer.AlignmentMode
function FlowContainer.set_alignment(alignment) end

---@return FlowContainer.AlignmentMode
function FlowContainer.get_alignment() end

---@param last_wrap_alignment FlowContainer.LastWrapAlignmentMode
function FlowContainer.set_last_wrap_alignment(last_wrap_alignment) end

---@return FlowContainer.LastWrapAlignmentMode
function FlowContainer.get_last_wrap_alignment() end

---@param vertical boolean
function FlowContainer.set_vertical(vertical) end

---@return boolean
function FlowContainer.is_vertical() end

---@param reverse_fill boolean
function FlowContainer.set_reverse_fill(reverse_fill) end

---@return boolean
function FlowContainer.is_reverse_fill() end
