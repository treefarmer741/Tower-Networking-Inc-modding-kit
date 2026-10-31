---@meta _
-- Generated API for game version 0.10.0

---@class PinJoint3D : Joint3D
local PinJoint3D = {
	---@type number
	["params/bias"] = nil,
	---@type number
	["params/damping"] = nil,
	---@type number
	["params/impulse_clamp"] = nil,
}

---@param param PinJoint3D.Param
---@param value number
function PinJoint3D.set_param(param, value) end

---@param param PinJoint3D.Param
---@return number
function PinJoint3D.get_param(param) end
