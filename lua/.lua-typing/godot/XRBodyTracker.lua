---@meta _
-- Generated API for game version 0.9.1

---@class XRBodyTracker : XRPositionalTracker
---@field has_tracking_data boolean
---@field body_flags integer
local XRBodyTracker = {}

---@param has_data boolean
function XRBodyTracker.set_has_tracking_data(has_data) end

---@return boolean
function XRBodyTracker.get_has_tracking_data() end

---@param flags XRBodyTracker.BodyFlags
function XRBodyTracker.set_body_flags(flags) end

---@return XRBodyTracker.BodyFlags
function XRBodyTracker.get_body_flags() end

---@param joint XRBodyTracker.Joint
---@param flags XRBodyTracker.JointFlags
function XRBodyTracker.set_joint_flags(joint, flags) end

---@param joint XRBodyTracker.Joint
---@return XRBodyTracker.JointFlags
function XRBodyTracker.get_joint_flags(joint) end

---@param joint XRBodyTracker.Joint
---@param transform Transform3D
function XRBodyTracker.set_joint_transform(joint, transform) end

---@param joint XRBodyTracker.Joint
---@return Transform3D
function XRBodyTracker.get_joint_transform(joint) end
