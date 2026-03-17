---@meta _
-- Generated API for game version 0.10.0

---@class RetargetModifier3D : SkeletonModifier3D
---@field profile SkeletonProfile
---@field use_global_pose boolean
---@field enable integer
local RetargetModifier3D = {}

---@param profile SkeletonProfile
function RetargetModifier3D.set_profile(profile) end

---@return SkeletonProfile
function RetargetModifier3D.get_profile() end

---@param use_global_pose boolean
function RetargetModifier3D.set_use_global_pose(use_global_pose) end

---@return boolean
function RetargetModifier3D.is_using_global_pose() end

---@param enable_flags RetargetModifier3D.TransformFlag
function RetargetModifier3D.set_enable_flags(enable_flags) end

---@return RetargetModifier3D.TransformFlag
function RetargetModifier3D.get_enable_flags() end

---@param enabled boolean
function RetargetModifier3D.set_position_enabled(enabled) end

---@return boolean
function RetargetModifier3D.is_position_enabled() end

---@param enabled boolean
function RetargetModifier3D.set_rotation_enabled(enabled) end

---@return boolean
function RetargetModifier3D.is_rotation_enabled() end

---@param enabled boolean
function RetargetModifier3D.set_scale_enabled(enabled) end

---@return boolean
function RetargetModifier3D.is_scale_enabled() end
