---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonModification2DJiggle : SkeletonModification2D
---@field target_nodepath string
---@field jiggle_data_chain_length integer
---@field stiffness number
---@field mass number
---@field damping number
---@field use_gravity boolean
---@field gravity Vector2
local SkeletonModification2DJiggle = {}

---@param target_nodepath string
function SkeletonModification2DJiggle.set_target_node(target_nodepath) end

---@return string
function SkeletonModification2DJiggle.get_target_node() end

---@param length integer
function SkeletonModification2DJiggle.set_jiggle_data_chain_length(length) end

---@return integer
function SkeletonModification2DJiggle.get_jiggle_data_chain_length() end

---@param stiffness number
function SkeletonModification2DJiggle.set_stiffness(stiffness) end

---@return number
function SkeletonModification2DJiggle.get_stiffness() end

---@param mass number
function SkeletonModification2DJiggle.set_mass(mass) end

---@return number
function SkeletonModification2DJiggle.get_mass() end

---@param damping number
function SkeletonModification2DJiggle.set_damping(damping) end

---@return number
function SkeletonModification2DJiggle.get_damping() end

---@param use_gravity boolean
function SkeletonModification2DJiggle.set_use_gravity(use_gravity) end

---@return boolean
function SkeletonModification2DJiggle.get_use_gravity() end

---@param gravity Vector2
function SkeletonModification2DJiggle.set_gravity(gravity) end

---@return Vector2
function SkeletonModification2DJiggle.get_gravity() end

---@param use_colliders boolean
function SkeletonModification2DJiggle.set_use_colliders(use_colliders) end

---@return boolean
function SkeletonModification2DJiggle.get_use_colliders() end

---@param collision_mask integer
function SkeletonModification2DJiggle.set_collision_mask(collision_mask) end

---@return integer
function SkeletonModification2DJiggle.get_collision_mask() end

---@param joint_idx integer
---@param bone2d_node string
function SkeletonModification2DJiggle.set_jiggle_joint_bone2d_node(joint_idx, bone2d_node) end

---@param joint_idx integer
---@return string
function SkeletonModification2DJiggle.get_jiggle_joint_bone2d_node(joint_idx) end

---@param joint_idx integer
---@param bone_idx integer
function SkeletonModification2DJiggle.set_jiggle_joint_bone_index(joint_idx, bone_idx) end

---@param joint_idx integer
---@return integer
function SkeletonModification2DJiggle.get_jiggle_joint_bone_index(joint_idx) end

---@param joint_idx integer
---@param override boolean
function SkeletonModification2DJiggle.set_jiggle_joint_override(joint_idx, override) end

---@param joint_idx integer
---@return boolean
function SkeletonModification2DJiggle.get_jiggle_joint_override(joint_idx) end

---@param joint_idx integer
---@param stiffness number
function SkeletonModification2DJiggle.set_jiggle_joint_stiffness(joint_idx, stiffness) end

---@param joint_idx integer
---@return number
function SkeletonModification2DJiggle.get_jiggle_joint_stiffness(joint_idx) end

---@param joint_idx integer
---@param mass number
function SkeletonModification2DJiggle.set_jiggle_joint_mass(joint_idx, mass) end

---@param joint_idx integer
---@return number
function SkeletonModification2DJiggle.get_jiggle_joint_mass(joint_idx) end

---@param joint_idx integer
---@param damping number
function SkeletonModification2DJiggle.set_jiggle_joint_damping(joint_idx, damping) end

---@param joint_idx integer
---@return number
function SkeletonModification2DJiggle.get_jiggle_joint_damping(joint_idx) end

---@param joint_idx integer
---@param use_gravity boolean
function SkeletonModification2DJiggle.set_jiggle_joint_use_gravity(joint_idx, use_gravity) end

---@param joint_idx integer
---@return boolean
function SkeletonModification2DJiggle.get_jiggle_joint_use_gravity(joint_idx) end

---@param joint_idx integer
---@param gravity Vector2
function SkeletonModification2DJiggle.set_jiggle_joint_gravity(joint_idx, gravity) end

---@param joint_idx integer
---@return Vector2
function SkeletonModification2DJiggle.get_jiggle_joint_gravity(joint_idx) end
