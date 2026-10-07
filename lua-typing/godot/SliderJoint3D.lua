---@meta _
-- Generated API for game version 0.10.0

---@class SliderJoint3D : Joint3D
local SliderJoint3D = {
	---@type number
	["linear_limit/upper_distance"] = nil,
	---@type number
	["linear_limit/lower_distance"] = nil,
	---@type number
	["linear_limit/softness"] = nil,
	---@type number
	["linear_limit/restitution"] = nil,
	---@type number
	["linear_limit/damping"] = nil,
	---@type number
	["linear_motion/softness"] = nil,
	---@type number
	["linear_motion/restitution"] = nil,
	---@type number
	["linear_motion/damping"] = nil,
	---@type number
	["linear_ortho/softness"] = nil,
	---@type number
	["linear_ortho/restitution"] = nil,
	---@type number
	["linear_ortho/damping"] = nil,
	---@type number
	["angular_limit/upper_angle"] = nil,
	---@type number
	["angular_limit/lower_angle"] = nil,
	---@type number
	["angular_limit/softness"] = nil,
	---@type number
	["angular_limit/restitution"] = nil,
	---@type number
	["angular_limit/damping"] = nil,
	---@type number
	["angular_motion/softness"] = nil,
	---@type number
	["angular_motion/restitution"] = nil,
	---@type number
	["angular_motion/damping"] = nil,
	---@type number
	["angular_ortho/softness"] = nil,
	---@type number
	["angular_ortho/restitution"] = nil,
	---@type number
	["angular_ortho/damping"] = nil,
}

---@param param SliderJoint3D.Param
---@param value number
function SliderJoint3D.set_param(param, value) end

---@param param SliderJoint3D.Param
---@return number
function SliderJoint3D.get_param(param) end
