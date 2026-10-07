---@meta _
-- Generated API for game version 0.10.0

---@class CollisionPolygon3D : Node3D
---@field depth number
---@field disabled boolean
---@field polygon PackedVector2Array
---@field margin number
---@field debug_color Color
---@field debug_fill boolean
local CollisionPolygon3D = {}

---@param depth number
function CollisionPolygon3D.set_depth(depth) end

---@return number
function CollisionPolygon3D.get_depth() end

---@param polygon PackedVector2Array
function CollisionPolygon3D.set_polygon(polygon) end

---@return PackedVector2Array
function CollisionPolygon3D.get_polygon() end

---@param disabled boolean
function CollisionPolygon3D.set_disabled(disabled) end

---@return boolean
function CollisionPolygon3D.is_disabled() end

---@param color Color
function CollisionPolygon3D.set_debug_color(color) end

---@return Color
function CollisionPolygon3D.get_debug_color() end

---@param enable boolean
function CollisionPolygon3D.set_enable_debug_fill(enable) end

---@return boolean
function CollisionPolygon3D.get_enable_debug_fill() end

---@param margin number
function CollisionPolygon3D.set_margin(margin) end

---@return number
function CollisionPolygon3D.get_margin() end
