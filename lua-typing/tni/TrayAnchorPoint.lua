---@meta _
-- Generated API for game version 0.12.1

---@class TrayAnchorPoint : RigidBody2D
---@field cable_joint PinJoint2D
---@field is_picked boolean
---@field is_picked_by_mouse boolean
---@field is_picked_by_attaching boolean
local TrayAnchorPoint = {}

---@param _impulse Object?  # Default = (0.0, 0.0)
---@return boolean
function TrayAnchorPoint.drop(_impulse) end

---@param _new_picker Object
---@return boolean
function TrayAnchorPoint.pickup(_new_picker) end
