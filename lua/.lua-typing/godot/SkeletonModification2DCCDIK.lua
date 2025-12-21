---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonModification2DCCDIK : SkeletonModification2D
---@field target_nodepath string
---@field tip_nodepath string
---@field ccdik_data_chain_length integer
local SkeletonModification2DCCDIK = {}

---@param target_nodepath string
function SkeletonModification2DCCDIK.set_target_node(target_nodepath) end

---@return string
function SkeletonModification2DCCDIK.get_target_node() end

---@param tip_nodepath string
function SkeletonModification2DCCDIK.set_tip_node(tip_nodepath) end

---@return string
function SkeletonModification2DCCDIK.get_tip_node() end

---@param length integer
function SkeletonModification2DCCDIK.set_ccdik_data_chain_length(length) end

---@return integer
function SkeletonModification2DCCDIK.get_ccdik_data_chain_length() end

---@param joint_idx integer
---@param bone2d_nodepath string
function SkeletonModification2DCCDIK.set_ccdik_joint_bone2d_node(joint_idx, bone2d_nodepath) end

---@param joint_idx integer
---@return string
function SkeletonModification2DCCDIK.get_ccdik_joint_bone2d_node(joint_idx) end

---@param joint_idx integer
---@param bone_idx integer
function SkeletonModification2DCCDIK.set_ccdik_joint_bone_index(joint_idx, bone_idx) end

---@param joint_idx integer
---@return integer
function SkeletonModification2DCCDIK.get_ccdik_joint_bone_index(joint_idx) end

---@param joint_idx integer
---@param rotate_from_joint boolean
function SkeletonModification2DCCDIK.set_ccdik_joint_rotate_from_joint(joint_idx, rotate_from_joint) end

---@param joint_idx integer
---@return boolean
function SkeletonModification2DCCDIK.get_ccdik_joint_rotate_from_joint(joint_idx) end

---@param joint_idx integer
---@param enable_constraint boolean
function SkeletonModification2DCCDIK.set_ccdik_joint_enable_constraint(joint_idx, enable_constraint) end

---@param joint_idx integer
---@return boolean
function SkeletonModification2DCCDIK.get_ccdik_joint_enable_constraint(joint_idx) end

---@param joint_idx integer
---@param angle_min number
function SkeletonModification2DCCDIK.set_ccdik_joint_constraint_angle_min(joint_idx, angle_min) end

---@param joint_idx integer
---@return number
function SkeletonModification2DCCDIK.get_ccdik_joint_constraint_angle_min(joint_idx) end

---@param joint_idx integer
---@param angle_max number
function SkeletonModification2DCCDIK.set_ccdik_joint_constraint_angle_max(joint_idx, angle_max) end

---@param joint_idx integer
---@return number
function SkeletonModification2DCCDIK.get_ccdik_joint_constraint_angle_max(joint_idx) end

---@param joint_idx integer
---@param invert boolean
function SkeletonModification2DCCDIK.set_ccdik_joint_constraint_angle_invert(joint_idx, invert) end

---@param joint_idx integer
---@return boolean
function SkeletonModification2DCCDIK.get_ccdik_joint_constraint_angle_invert(joint_idx) end
