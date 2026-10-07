---@meta _
-- Generated API for game version 0.10.0

---@class SkeletonModification2DTwoBoneIK : SkeletonModification2D
---@field target_nodepath string
---@field target_minimum_distance number
---@field target_maximum_distance number
---@field flip_bend_direction boolean
local SkeletonModification2DTwoBoneIK = {}

---@param target_nodepath string
function SkeletonModification2DTwoBoneIK.set_target_node(target_nodepath) end

---@return string
function SkeletonModification2DTwoBoneIK.get_target_node() end

---@param minimum_distance number
function SkeletonModification2DTwoBoneIK.set_target_minimum_distance(minimum_distance) end

---@return number
function SkeletonModification2DTwoBoneIK.get_target_minimum_distance() end

---@param maximum_distance number
function SkeletonModification2DTwoBoneIK.set_target_maximum_distance(maximum_distance) end

---@return number
function SkeletonModification2DTwoBoneIK.get_target_maximum_distance() end

---@param flip_direction boolean
function SkeletonModification2DTwoBoneIK.set_flip_bend_direction(flip_direction) end

---@return boolean
function SkeletonModification2DTwoBoneIK.get_flip_bend_direction() end

---@param bone2d_node string
function SkeletonModification2DTwoBoneIK.set_joint_one_bone2d_node(bone2d_node) end

---@return string
function SkeletonModification2DTwoBoneIK.get_joint_one_bone2d_node() end

---@param bone_idx integer
function SkeletonModification2DTwoBoneIK.set_joint_one_bone_idx(bone_idx) end

---@return integer
function SkeletonModification2DTwoBoneIK.get_joint_one_bone_idx() end

---@param bone2d_node string
function SkeletonModification2DTwoBoneIK.set_joint_two_bone2d_node(bone2d_node) end

---@return string
function SkeletonModification2DTwoBoneIK.get_joint_two_bone2d_node() end

---@param bone_idx integer
function SkeletonModification2DTwoBoneIK.set_joint_two_bone_idx(bone_idx) end

---@return integer
function SkeletonModification2DTwoBoneIK.get_joint_two_bone_idx() end
