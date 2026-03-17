---@meta _
-- Generated API for game version 0.10.0

---@class Skeleton2D : Node2D
local Skeleton2D = {}

---@return integer
function Skeleton2D.get_bone_count() end

---@param idx integer
---@return Bone2D
function Skeleton2D.get_bone(idx) end

---@return RID
function Skeleton2D.get_skeleton() end

---@param modification_stack SkeletonModificationStack2D
function Skeleton2D.set_modification_stack(modification_stack) end

---@return SkeletonModificationStack2D
function Skeleton2D.get_modification_stack() end

---@param delta number
---@param execution_mode integer
function Skeleton2D.execute_modifications(delta, execution_mode) end

---@param bone_idx integer
---@param override_pose Transform2D
---@param strength number
---@param persistent boolean
function Skeleton2D.set_bone_local_pose_override(bone_idx, override_pose, strength, persistent) end

---@param bone_idx integer
---@return Transform2D
function Skeleton2D.get_bone_local_pose_override(bone_idx) end
