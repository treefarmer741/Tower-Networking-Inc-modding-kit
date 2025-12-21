---@meta _
-- Generated API for game version 0.9.1

---@class HingeJoint3D : Joint3D
local HingeJoint3D = {
	---@type number
	["params/bias"] = nil,
	---@type boolean
	["angular_limit/enable"] = nil,
	---@type number
	["angular_limit/upper"] = nil,
	---@type number
	["angular_limit/lower"] = nil,
	---@type number
	["angular_limit/bias"] = nil,
	---@type number
	["angular_limit/softness"] = nil,
	---@type number
	["angular_limit/relaxation"] = nil,
	---@type boolean
	["motor/enable"] = nil,
	---@type number
	["motor/target_velocity"] = nil,
	---@type number
	["motor/max_impulse"] = nil,
}

---@param param HingeJoint3D.Param
---@param value number
function HingeJoint3D.set_param(param, value) end

---@param param HingeJoint3D.Param
---@return number
function HingeJoint3D.get_param(param) end

---@param flag HingeJoint3D.Flag
---@param enabled boolean
function HingeJoint3D.set_flag(flag, enabled) end

---@param flag HingeJoint3D.Flag
---@return boolean
function HingeJoint3D.get_flag(flag) end
