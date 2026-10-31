---@meta _
-- Generated API for game version 0.10.0

---@class Path3D : Node3D
---@field curve Curve3D
---@field debug_custom_color Color
local Path3D = {}

---@param curve Curve3D
function Path3D.set_curve(curve) end

---@return Curve3D
function Path3D.get_curve() end

---@param debug_custom_color Color
function Path3D.set_debug_custom_color(debug_custom_color) end

---@return Color
function Path3D.get_debug_custom_color() end
