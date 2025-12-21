---@meta _
-- Generated API for game version 0.9.1

---@class AnimatableBody3D : StaticBody3D
---@field sync_to_physics boolean
local AnimatableBody3D = {}

---@param enable boolean
function AnimatableBody3D.set_sync_to_physics(enable) end

---@return boolean
function AnimatableBody3D.is_sync_to_physics_enabled() end
