---@meta _
-- Generated API for game version 0.10.0

---@class StaticBody2D : PhysicsBody2D
---@field physics_material_override PhysicsMaterial
---@field constant_linear_velocity Vector2
---@field constant_angular_velocity number
local StaticBody2D = {}

---@param vel Vector2
function StaticBody2D.set_constant_linear_velocity(vel) end

---@param vel number
function StaticBody2D.set_constant_angular_velocity(vel) end

---@return Vector2
function StaticBody2D.get_constant_linear_velocity() end

---@return number
function StaticBody2D.get_constant_angular_velocity() end

---@param physics_material_override PhysicsMaterial
function StaticBody2D.set_physics_material_override(physics_material_override) end

---@return PhysicsMaterial
function StaticBody2D.get_physics_material_override() end
