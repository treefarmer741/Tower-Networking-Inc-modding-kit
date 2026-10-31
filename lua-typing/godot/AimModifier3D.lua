---@meta _
-- Generated API for game version 0.10.0

---@class AimModifier3D : BoneConstraint3D
---@field setting_count Settings,settings/
local AimModifier3D = {}

---@param index integer
---@param axis SkeletonModifier3D.BoneAxis
function AimModifier3D.set_forward_axis(index, axis) end

---@param index integer
---@return SkeletonModifier3D.BoneAxis
function AimModifier3D.get_forward_axis(index) end

---@param index integer
---@param enabled boolean
function AimModifier3D.set_use_euler(index, enabled) end

---@param index integer
---@return boolean
function AimModifier3D.is_using_euler(index) end

---@param index integer
---@param axis Vector3.Axis
function AimModifier3D.set_primary_rotation_axis(index, axis) end

---@param index integer
---@return Vector3.Axis
function AimModifier3D.get_primary_rotation_axis(index) end

---@param index integer
---@param enabled boolean
function AimModifier3D.set_use_secondary_rotation(index, enabled) end

---@param index integer
---@return boolean
function AimModifier3D.is_using_secondary_rotation(index) end
