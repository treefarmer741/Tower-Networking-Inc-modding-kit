---@meta _
-- Generated API for game version 0.9.1

---@class XRBodyModifier3D : SkeletonModifier3D
---@field body_tracker string
---@field body_update integer
---@field bone_update integer
local XRBodyModifier3D = {}

---@param tracker_name string
function XRBodyModifier3D.set_body_tracker(tracker_name) end

---@return string
function XRBodyModifier3D.get_body_tracker() end

---@param body_update XRBodyModifier3D.BodyUpdate
function XRBodyModifier3D.set_body_update(body_update) end

---@return XRBodyModifier3D.BodyUpdate
function XRBodyModifier3D.get_body_update() end

---@param bone_update XRBodyModifier3D.BoneUpdate
function XRBodyModifier3D.set_bone_update(bone_update) end

---@return XRBodyModifier3D.BoneUpdate
function XRBodyModifier3D.get_bone_update() end
