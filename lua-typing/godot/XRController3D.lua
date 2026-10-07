---@meta _
-- Generated API for game version 0.10.0

---@class XRController3D : XRNode3D
local XRController3D = {}

---@param name string
---@return boolean
function XRController3D.is_button_pressed(name) end

---@param name string
---@return Object
function XRController3D.get_input(name) end

---@param name string
---@return number
function XRController3D.get_float(name) end

---@param name string
---@return Vector2
function XRController3D.get_vector2(name) end

---@return XRPositionalTracker.TrackerHand
function XRController3D.get_tracker_hand() end
