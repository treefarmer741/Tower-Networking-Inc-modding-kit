---@meta _
-- Generated API for game version 0.10.0

---@class XRNode3D : Node3D
---@field tracker string
---@field pose string
---@field show_when_tracked boolean
local XRNode3D = {}

---@param tracker_name string
function XRNode3D.set_tracker(tracker_name) end

---@return string
function XRNode3D.get_tracker() end

---@param pose string
function XRNode3D.set_pose_name(pose) end

---@return string
function XRNode3D.get_pose_name() end

---@param show boolean
function XRNode3D.set_show_when_tracked(show) end

---@return boolean
function XRNode3D.get_show_when_tracked() end

---@return boolean
function XRNode3D.get_is_active() end

---@return boolean
function XRNode3D.get_has_tracking_data() end

---@return XRPose
function XRNode3D.get_pose() end

---@param action_name string
---@param frequency number
---@param amplitude number
---@param duration_sec number
---@param delay_sec number
function XRNode3D.trigger_haptic_pulse(action_name, frequency, amplitude, duration_sec, delay_sec) end
