---@meta _
-- Generated API for game version 0.10.0

---@class PinJoint2D : Joint2D
---@field softness number
---@field angular_limit_enabled boolean
---@field angular_limit_lower number
---@field angular_limit_upper number
---@field motor_enabled boolean
---@field motor_target_velocity number
local PinJoint2D = {}

---@param softness number
function PinJoint2D.set_softness(softness) end

---@return number
function PinJoint2D.get_softness() end

---@param angular_limit_lower number
function PinJoint2D.set_angular_limit_lower(angular_limit_lower) end

---@return number
function PinJoint2D.get_angular_limit_lower() end

---@param angular_limit_upper number
function PinJoint2D.set_angular_limit_upper(angular_limit_upper) end

---@return number
function PinJoint2D.get_angular_limit_upper() end

---@param motor_target_velocity number
function PinJoint2D.set_motor_target_velocity(motor_target_velocity) end

---@return number
function PinJoint2D.get_motor_target_velocity() end

---@param enabled boolean
function PinJoint2D.set_motor_enabled(enabled) end

---@return boolean
function PinJoint2D.is_motor_enabled() end

---@param enabled boolean
function PinJoint2D.set_angular_limit_enabled(enabled) end

---@return boolean
function PinJoint2D.is_angular_limit_enabled() end
