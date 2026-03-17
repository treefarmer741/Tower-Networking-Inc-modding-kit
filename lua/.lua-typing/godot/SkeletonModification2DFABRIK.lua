---@meta _
-- Generated API for game version 0.10.0

---@class SkeletonModification2DFABRIK : SkeletonModification2D
---@field target_nodepath string
---@field fabrik_data_chain_length integer
local SkeletonModification2DFABRIK = {}

---@param target_nodepath string
function SkeletonModification2DFABRIK.set_target_node(target_nodepath) end

---@return string
function SkeletonModification2DFABRIK.get_target_node() end

---@param length integer
function SkeletonModification2DFABRIK.set_fabrik_data_chain_length(length) end

---@return integer
function SkeletonModification2DFABRIK.get_fabrik_data_chain_length() end

---@param joint_idx integer
---@param bone2d_nodepath string
function SkeletonModification2DFABRIK.set_fabrik_joint_bone2d_node(joint_idx, bone2d_nodepath) end

---@param joint_idx integer
---@return string
function SkeletonModification2DFABRIK.get_fabrik_joint_bone2d_node(joint_idx) end

---@param joint_idx integer
---@param bone_idx integer
function SkeletonModification2DFABRIK.set_fabrik_joint_bone_index(joint_idx, bone_idx) end

---@param joint_idx integer
---@return integer
function SkeletonModification2DFABRIK.get_fabrik_joint_bone_index(joint_idx) end

---@param joint_idx integer
---@param magnet_position Vector2
function SkeletonModification2DFABRIK.set_fabrik_joint_magnet_position(joint_idx, magnet_position) end

---@param joint_idx integer
---@return Vector2
function SkeletonModification2DFABRIK.get_fabrik_joint_magnet_position(joint_idx) end

---@param joint_idx integer
---@param use_target_rotation boolean
function SkeletonModification2DFABRIK.set_fabrik_joint_use_target_rotation(joint_idx, use_target_rotation) end

---@param joint_idx integer
---@return boolean
function SkeletonModification2DFABRIK.get_fabrik_joint_use_target_rotation(joint_idx) end
