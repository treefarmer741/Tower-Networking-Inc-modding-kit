---@meta _
-- Generated API for game version 0.10.0

---@class XRHandTracker : XRPositionalTracker
---@field has_tracking_data boolean
---@field hand_tracking_source integer
local XRHandTracker = {}

---@param has_data boolean
function XRHandTracker.set_has_tracking_data(has_data) end

---@return boolean
function XRHandTracker.get_has_tracking_data() end

---@param source XRHandTracker.HandTrackingSource
function XRHandTracker.set_hand_tracking_source(source) end

---@return XRHandTracker.HandTrackingSource
function XRHandTracker.get_hand_tracking_source() end

---@param joint XRHandTracker.HandJoint
---@param flags XRHandTracker.HandJointFlags
function XRHandTracker.set_hand_joint_flags(joint, flags) end

---@param joint XRHandTracker.HandJoint
---@return XRHandTracker.HandJointFlags
function XRHandTracker.get_hand_joint_flags(joint) end

---@param joint XRHandTracker.HandJoint
---@param transform Transform3D
function XRHandTracker.set_hand_joint_transform(joint, transform) end

---@param joint XRHandTracker.HandJoint
---@return Transform3D
function XRHandTracker.get_hand_joint_transform(joint) end

---@param joint XRHandTracker.HandJoint
---@param radius number
function XRHandTracker.set_hand_joint_radius(joint, radius) end

---@param joint XRHandTracker.HandJoint
---@return number
function XRHandTracker.get_hand_joint_radius(joint) end

---@param joint XRHandTracker.HandJoint
---@param linear_velocity Vector3
function XRHandTracker.set_hand_joint_linear_velocity(joint, linear_velocity) end

---@param joint XRHandTracker.HandJoint
---@return Vector3
function XRHandTracker.get_hand_joint_linear_velocity(joint) end

---@param joint XRHandTracker.HandJoint
---@param angular_velocity Vector3
function XRHandTracker.set_hand_joint_angular_velocity(joint, angular_velocity) end

---@param joint XRHandTracker.HandJoint
---@return Vector3
function XRHandTracker.get_hand_joint_angular_velocity(joint) end
