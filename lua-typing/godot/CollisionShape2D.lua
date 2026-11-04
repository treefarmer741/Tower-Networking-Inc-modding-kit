---@meta _
-- Generated API for game version 0.10.0

---@class CollisionShape2D : Node2D
---@field shape Shape2D
---@field disabled boolean
---@field one_way_collision boolean
---@field one_way_collision_margin number
---@field debug_color Color
local CollisionShape2D = {}

---@param shape Shape2D
function CollisionShape2D.set_shape(shape) end

---@return Shape2D
function CollisionShape2D.get_shape() end

---@param disabled boolean
function CollisionShape2D.set_disabled(disabled) end

---@return boolean
function CollisionShape2D.is_disabled() end

---@param enabled boolean
function CollisionShape2D.set_one_way_collision(enabled) end

---@return boolean
function CollisionShape2D.is_one_way_collision_enabled() end

---@param margin number
function CollisionShape2D.set_one_way_collision_margin(margin) end

---@return number
function CollisionShape2D.get_one_way_collision_margin() end

---@param color Color
function CollisionShape2D.set_debug_color(color) end

---@return Color
function CollisionShape2D.get_debug_color() end
