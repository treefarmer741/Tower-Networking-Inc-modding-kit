---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonModification2DLookAt : SkeletonModification2D
---@field bone_index integer
---@field bone2d_node string
---@field target_nodepath string
local SkeletonModification2DLookAt = {}

---@param bone2d_nodepath string
function SkeletonModification2DLookAt.set_bone2d_node(bone2d_nodepath) end

---@return string
function SkeletonModification2DLookAt.get_bone2d_node() end

---@param bone_idx integer
function SkeletonModification2DLookAt.set_bone_index(bone_idx) end

---@return integer
function SkeletonModification2DLookAt.get_bone_index() end

---@param target_nodepath string
function SkeletonModification2DLookAt.set_target_node(target_nodepath) end

---@return string
function SkeletonModification2DLookAt.get_target_node() end

---@param rotation number
function SkeletonModification2DLookAt.set_additional_rotation(rotation) end

---@return number
function SkeletonModification2DLookAt.get_additional_rotation() end

---@param enable_constraint boolean
function SkeletonModification2DLookAt.set_enable_constraint(enable_constraint) end

---@return boolean
function SkeletonModification2DLookAt.get_enable_constraint() end

---@param angle_min number
function SkeletonModification2DLookAt.set_constraint_angle_min(angle_min) end

---@return number
function SkeletonModification2DLookAt.get_constraint_angle_min() end

---@param angle_max number
function SkeletonModification2DLookAt.set_constraint_angle_max(angle_max) end

---@return number
function SkeletonModification2DLookAt.get_constraint_angle_max() end

---@param invert boolean
function SkeletonModification2DLookAt.set_constraint_angle_invert(invert) end

---@return boolean
function SkeletonModification2DLookAt.get_constraint_angle_invert() end
