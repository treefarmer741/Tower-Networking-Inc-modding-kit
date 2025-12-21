---@meta _
-- Generated API for game version 0.9.1

---@class SkeletonModification2DPhysicalBones : SkeletonModification2D
---@field physical_bone_chain_length integer
local SkeletonModification2DPhysicalBones = {}

---@param length integer
function SkeletonModification2DPhysicalBones.set_physical_bone_chain_length(length) end

---@return integer
function SkeletonModification2DPhysicalBones.get_physical_bone_chain_length() end

---@param joint_idx integer
---@param physicalbone2d_node string
function SkeletonModification2DPhysicalBones.set_physical_bone_node(joint_idx, physicalbone2d_node) end

---@param joint_idx integer
---@return string
function SkeletonModification2DPhysicalBones.get_physical_bone_node(joint_idx) end

function SkeletonModification2DPhysicalBones.fetch_physical_bones() end

---@param bones Array<StringName>?  # Default = []
function SkeletonModification2DPhysicalBones.start_simulation(bones) end

---@param bones Array<StringName>?  # Default = []
function SkeletonModification2DPhysicalBones.stop_simulation(bones) end
