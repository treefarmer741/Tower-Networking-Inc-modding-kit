---@meta _
-- Generated API for game version 0.10.0

---@class LayoutUtils : Object
local LayoutUtils = {}
---@enum LayoutUtils.AnchorMode
LayoutUtils.AnchorMode = {
	["TOP_LEFT"] = 0,
	["TOP_CENTER"] = 1,
	["TOP_RIGHT"] = 2,
	["MIDDLE_LEFT"] = 3,
	["MIDDLE_CENTER"] = 4,
	["MIDDLE_RIGHT"] = 5,
	["BOTTOM_LEFT"] = 6,
	["BOTTOM_CENTER"] = 7,
	["BOTTOM_RIGHT"] = 8,
}

---@param original_vec Vector2
---@param anchor_mode LayoutUtils.AnchorMode
---@param rect_size Vector2
---@return Vector2
function LayoutUtils.apply_anchor_mode(original_vec, anchor_mode, rect_size) end
