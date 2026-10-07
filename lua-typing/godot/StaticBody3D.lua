---@meta _
-- Generated API for game version 0.10.0

---@class StaticBody3D : PhysicsBody3D
---@field physics_material_override PhysicsMaterial
---@field constant_linear_velocity Vector3
---@field constant_angular_velocity Vector3
local StaticBody3D = {}

---@param vel Vector3
function StaticBody3D.set_constant_linear_velocity(vel) end

---@param vel Vector3
function StaticBody3D.set_constant_angular_velocity(vel) end

---@return Vector3
function StaticBody3D.get_constant_linear_velocity() end

---@return Vector3
function StaticBody3D.get_constant_angular_velocity() end

---@param physics_material_override PhysicsMaterial
function StaticBody3D.set_physics_material_override(physics_material_override) end

---@return PhysicsMaterial
function StaticBody3D.get_physics_material_override() end
