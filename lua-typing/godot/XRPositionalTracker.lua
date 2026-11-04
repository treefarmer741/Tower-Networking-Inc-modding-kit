---@meta _
-- Generated API for game version 0.10.0

---@class XRPositionalTracker : XRTracker
---@field profile string
---@field hand integer
local XRPositionalTracker = {}

---@return string
function XRPositionalTracker.get_tracker_profile() end

---@param profile string
function XRPositionalTracker.set_tracker_profile(profile) end

---@return XRPositionalTracker.TrackerHand
function XRPositionalTracker.get_tracker_hand() end

---@param hand XRPositionalTracker.TrackerHand
function XRPositionalTracker.set_tracker_hand(hand) end

---@param name string
---@return boolean
function XRPositionalTracker.has_pose(name) end

---@param name string
---@return XRPose
function XRPositionalTracker.get_pose(name) end

---@param name string
function XRPositionalTracker.invalidate_pose(name) end

---@param name string
---@param transform Transform3D
---@param linear_velocity Vector3
---@param angular_velocity Vector3
---@param tracking_confidence XRPose.TrackingConfidence
function XRPositionalTracker.set_pose(name, transform, linear_velocity, angular_velocity, tracking_confidence) end

---@param name string
---@return Object
function XRPositionalTracker.get_input(name) end

---@param name string
---@param value Object
function XRPositionalTracker.set_input(name, value) end
