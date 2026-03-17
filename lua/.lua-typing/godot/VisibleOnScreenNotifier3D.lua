---@meta _
-- Generated API for game version 0.10.0

---@class VisibleOnScreenNotifier3D : VisualInstance3D
---@field aabb AABB
local VisibleOnScreenNotifier3D = {}

---@param rect AABB
function VisibleOnScreenNotifier3D.set_aabb(rect) end

---@return boolean
function VisibleOnScreenNotifier3D.is_on_screen() end
