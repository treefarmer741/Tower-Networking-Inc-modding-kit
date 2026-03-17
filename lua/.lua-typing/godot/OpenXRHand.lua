---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRHand : Node3D
---@field hand integer
---@field motion_range integer
---@field hand_skeleton string
---@field skeleton_rig integer
---@field bone_update integer
local OpenXRHand = {}

---@param hand OpenXRHand.Hands
function OpenXRHand.set_hand(hand) end

---@return OpenXRHand.Hands
function OpenXRHand.get_hand() end

---@param hand_skeleton string
function OpenXRHand.set_hand_skeleton(hand_skeleton) end

---@return string
function OpenXRHand.get_hand_skeleton() end

---@param motion_range OpenXRHand.MotionRange
function OpenXRHand.set_motion_range(motion_range) end

---@return OpenXRHand.MotionRange
function OpenXRHand.get_motion_range() end

---@param skeleton_rig OpenXRHand.SkeletonRig
function OpenXRHand.set_skeleton_rig(skeleton_rig) end

---@return OpenXRHand.SkeletonRig
function OpenXRHand.get_skeleton_rig() end

---@param bone_update OpenXRHand.BoneUpdate
function OpenXRHand.set_bone_update(bone_update) end

---@return OpenXRHand.BoneUpdate
function OpenXRHand.get_bone_update() end
