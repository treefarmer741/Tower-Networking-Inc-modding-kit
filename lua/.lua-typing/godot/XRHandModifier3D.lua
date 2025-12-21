---@meta _
-- Generated API for game version 0.9.1

---@class XRHandModifier3D : SkeletonModifier3D
---@field hand_tracker string
---@field bone_update integer
local XRHandModifier3D = {}

---@param tracker_name string
function XRHandModifier3D.set_hand_tracker(tracker_name) end

---@return string
function XRHandModifier3D.get_hand_tracker() end

---@param bone_update XRHandModifier3D.BoneUpdate
function XRHandModifier3D.set_bone_update(bone_update) end

---@return XRHandModifier3D.BoneUpdate
function XRHandModifier3D.get_bone_update() end
