---@meta _
-- Generated API for game version 0.10.0

---@class BoxContainer : Container
---@field alignment integer
---@field vertical boolean
local BoxContainer = {}

---@param begin boolean
---@return Control
function BoxContainer.add_spacer(begin) end

---@param alignment BoxContainer.AlignmentMode
function BoxContainer.set_alignment(alignment) end

---@return BoxContainer.AlignmentMode
function BoxContainer.get_alignment() end

---@param vertical boolean
function BoxContainer.set_vertical(vertical) end

---@return boolean
function BoxContainer.is_vertical() end
