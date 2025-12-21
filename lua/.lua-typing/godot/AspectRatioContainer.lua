---@meta _
-- Generated API for game version 0.9.1

---@class AspectRatioContainer : Container
---@field ratio number
---@field stretch_mode integer
---@field alignment_horizontal integer
---@field alignment_vertical integer
local AspectRatioContainer = {}

---@param ratio number
function AspectRatioContainer.set_ratio(ratio) end

---@return number
function AspectRatioContainer.get_ratio() end

---@param stretch_mode AspectRatioContainer.StretchMode
function AspectRatioContainer.set_stretch_mode(stretch_mode) end

---@return AspectRatioContainer.StretchMode
function AspectRatioContainer.get_stretch_mode() end

---@param alignment_horizontal AspectRatioContainer.AlignmentMode
function AspectRatioContainer.set_alignment_horizontal(alignment_horizontal) end

---@return AspectRatioContainer.AlignmentMode
function AspectRatioContainer.get_alignment_horizontal() end

---@param alignment_vertical AspectRatioContainer.AlignmentMode
function AspectRatioContainer.set_alignment_vertical(alignment_vertical) end

---@return AspectRatioContainer.AlignmentMode
function AspectRatioContainer.get_alignment_vertical() end
