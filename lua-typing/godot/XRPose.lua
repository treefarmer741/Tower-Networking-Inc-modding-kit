---@meta _
-- Generated API for game version 0.10.0

---@class XRPose : RefCounted
---@field has_tracking_data boolean
---@field name string
---@field transform string
---@field linear_velocity string
---@field angular_velocity string
---@field tracking_confidence integer
local XRPose = {}

---@param has_tracking_data boolean
function XRPose.set_has_tracking_data(has_tracking_data) end

---@return boolean
function XRPose.get_has_tracking_data() end

---@param name string
function XRPose.set_name(name) end

---@return string
function XRPose.get_name() end

---@param transform Transform3D
function XRPose.set_transform(transform) end

---@return Transform3D
function XRPose.get_transform() end

---@return Transform3D
function XRPose.get_adjusted_transform() end

---@param velocity Vector3
function XRPose.set_linear_velocity(velocity) end

---@return Vector3
function XRPose.get_linear_velocity() end

---@param velocity Vector3
function XRPose.set_angular_velocity(velocity) end

---@return Vector3
function XRPose.get_angular_velocity() end

---@param tracking_confidence XRPose.TrackingConfidence
function XRPose.set_tracking_confidence(tracking_confidence) end

---@return XRPose.TrackingConfidence
function XRPose.get_tracking_confidence() end
