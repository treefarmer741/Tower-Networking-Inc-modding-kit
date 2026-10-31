---@meta _
-- Generated API for game version 0.10.0

---@class CollisionShape3D : Node3D
---@field shape Shape3D
---@field disabled boolean
---@field debug_color Color
---@field debug_fill boolean
local CollisionShape3D = {}

---@param resource Resource
function CollisionShape3D.resource_changed(resource) end

---@param shape Shape3D
function CollisionShape3D.set_shape(shape) end

---@return Shape3D
function CollisionShape3D.get_shape() end

---@param enable boolean
function CollisionShape3D.set_disabled(enable) end

---@return boolean
function CollisionShape3D.is_disabled() end

function CollisionShape3D.make_convex_from_siblings() end

---@param color Color
function CollisionShape3D.set_debug_color(color) end

---@return Color
function CollisionShape3D.get_debug_color() end

---@param enable boolean
function CollisionShape3D.set_enable_debug_fill(enable) end

---@return boolean
function CollisionShape3D.get_enable_debug_fill() end
