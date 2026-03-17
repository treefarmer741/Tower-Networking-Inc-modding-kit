---@meta _
-- Generated API for game version 0.10.0

---@class CollisionPolygon2D : Node2D
---@field build_mode integer
---@field polygon PackedVector2Array
---@field disabled boolean
---@field one_way_collision boolean
---@field one_way_collision_margin number
local CollisionPolygon2D = {}

---@param polygon PackedVector2Array
function CollisionPolygon2D.set_polygon(polygon) end

---@return PackedVector2Array
function CollisionPolygon2D.get_polygon() end

---@param build_mode CollisionPolygon2D.BuildMode
function CollisionPolygon2D.set_build_mode(build_mode) end

---@return CollisionPolygon2D.BuildMode
function CollisionPolygon2D.get_build_mode() end

---@param disabled boolean
function CollisionPolygon2D.set_disabled(disabled) end

---@return boolean
function CollisionPolygon2D.is_disabled() end

---@param enabled boolean
function CollisionPolygon2D.set_one_way_collision(enabled) end

---@return boolean
function CollisionPolygon2D.is_one_way_collision_enabled() end

---@param margin number
function CollisionPolygon2D.set_one_way_collision_margin(margin) end

---@return number
function CollisionPolygon2D.get_one_way_collision_margin() end
