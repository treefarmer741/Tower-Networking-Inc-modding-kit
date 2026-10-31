---@meta _
-- Generated API for game version 0.10.0

---@class Generic6DOFJoint3D : Joint3D
local Generic6DOFJoint3D = {
	---@type boolean
	["linear_limit_x/enabled"] = nil,
	---@type number
	["linear_limit_x/upper_distance"] = nil,
	---@type number
	["linear_limit_x/lower_distance"] = nil,
	---@type number
	["linear_limit_x/softness"] = nil,
	---@type number
	["linear_limit_x/restitution"] = nil,
	---@type number
	["linear_limit_x/damping"] = nil,
	---@type boolean
	["linear_limit_y/enabled"] = nil,
	---@type number
	["linear_limit_y/upper_distance"] = nil,
	---@type number
	["linear_limit_y/lower_distance"] = nil,
	---@type number
	["linear_limit_y/softness"] = nil,
	---@type number
	["linear_limit_y/restitution"] = nil,
	---@type number
	["linear_limit_y/damping"] = nil,
	---@type boolean
	["linear_limit_z/enabled"] = nil,
	---@type number
	["linear_limit_z/upper_distance"] = nil,
	---@type number
	["linear_limit_z/lower_distance"] = nil,
	---@type number
	["linear_limit_z/softness"] = nil,
	---@type number
	["linear_limit_z/restitution"] = nil,
	---@type number
	["linear_limit_z/damping"] = nil,
	---@type boolean
	["linear_motor_x/enabled"] = nil,
	---@type number
	["linear_motor_x/target_velocity"] = nil,
	---@type number
	["linear_motor_x/force_limit"] = nil,
	---@type boolean
	["linear_motor_y/enabled"] = nil,
	---@type number
	["linear_motor_y/target_velocity"] = nil,
	---@type number
	["linear_motor_y/force_limit"] = nil,
	---@type boolean
	["linear_motor_z/enabled"] = nil,
	---@type number
	["linear_motor_z/target_velocity"] = nil,
	---@type number
	["linear_motor_z/force_limit"] = nil,
	---@type boolean
	["linear_spring_x/enabled"] = nil,
	---@type number
	["linear_spring_x/stiffness"] = nil,
	---@type number
	["linear_spring_x/damping"] = nil,
	---@type number
	["linear_spring_x/equilibrium_point"] = nil,
	---@type boolean
	["linear_spring_y/enabled"] = nil,
	---@type number
	["linear_spring_y/stiffness"] = nil,
	---@type number
	["linear_spring_y/damping"] = nil,
	---@type number
	["linear_spring_y/equilibrium_point"] = nil,
	---@type boolean
	["linear_spring_z/enabled"] = nil,
	---@type number
	["linear_spring_z/stiffness"] = nil,
	---@type number
	["linear_spring_z/damping"] = nil,
	---@type number
	["linear_spring_z/equilibrium_point"] = nil,
	---@type boolean
	["angular_limit_x/enabled"] = nil,
	---@type number
	["angular_limit_x/upper_angle"] = nil,
	---@type number
	["angular_limit_x/lower_angle"] = nil,
	---@type number
	["angular_limit_x/softness"] = nil,
	---@type number
	["angular_limit_x/restitution"] = nil,
	---@type number
	["angular_limit_x/damping"] = nil,
	---@type number
	["angular_limit_x/force_limit"] = nil,
	---@type number
	["angular_limit_x/erp"] = nil,
	---@type boolean
	["angular_limit_y/enabled"] = nil,
	---@type number
	["angular_limit_y/upper_angle"] = nil,
	---@type number
	["angular_limit_y/lower_angle"] = nil,
	---@type number
	["angular_limit_y/softness"] = nil,
	---@type number
	["angular_limit_y/restitution"] = nil,
	---@type number
	["angular_limit_y/damping"] = nil,
	---@type number
	["angular_limit_y/force_limit"] = nil,
	---@type number
	["angular_limit_y/erp"] = nil,
	---@type boolean
	["angular_limit_z/enabled"] = nil,
	---@type number
	["angular_limit_z/upper_angle"] = nil,
	---@type number
	["angular_limit_z/lower_angle"] = nil,
	---@type number
	["angular_limit_z/softness"] = nil,
	---@type number
	["angular_limit_z/restitution"] = nil,
	---@type number
	["angular_limit_z/damping"] = nil,
	---@type number
	["angular_limit_z/force_limit"] = nil,
	---@type number
	["angular_limit_z/erp"] = nil,
	---@type boolean
	["angular_motor_x/enabled"] = nil,
	---@type number
	["angular_motor_x/target_velocity"] = nil,
	---@type number
	["angular_motor_x/force_limit"] = nil,
	---@type boolean
	["angular_motor_y/enabled"] = nil,
	---@type number
	["angular_motor_y/target_velocity"] = nil,
	---@type number
	["angular_motor_y/force_limit"] = nil,
	---@type boolean
	["angular_motor_z/enabled"] = nil,
	---@type number
	["angular_motor_z/target_velocity"] = nil,
	---@type number
	["angular_motor_z/force_limit"] = nil,
	---@type boolean
	["angular_spring_x/enabled"] = nil,
	---@type number
	["angular_spring_x/stiffness"] = nil,
	---@type number
	["angular_spring_x/damping"] = nil,
	---@type number
	["angular_spring_x/equilibrium_point"] = nil,
	---@type boolean
	["angular_spring_y/enabled"] = nil,
	---@type number
	["angular_spring_y/stiffness"] = nil,
	---@type number
	["angular_spring_y/damping"] = nil,
	---@type number
	["angular_spring_y/equilibrium_point"] = nil,
	---@type boolean
	["angular_spring_z/enabled"] = nil,
	---@type number
	["angular_spring_z/stiffness"] = nil,
	---@type number
	["angular_spring_z/damping"] = nil,
	---@type number
	["angular_spring_z/equilibrium_point"] = nil,
}

---@param param Generic6DOFJoint3D.Param
---@param value number
function Generic6DOFJoint3D.set_param_x(param, value) end

---@param param Generic6DOFJoint3D.Param
---@return number
function Generic6DOFJoint3D.get_param_x(param) end

---@param param Generic6DOFJoint3D.Param
---@param value number
function Generic6DOFJoint3D.set_param_y(param, value) end

---@param param Generic6DOFJoint3D.Param
---@return number
function Generic6DOFJoint3D.get_param_y(param) end

---@param param Generic6DOFJoint3D.Param
---@param value number
function Generic6DOFJoint3D.set_param_z(param, value) end

---@param param Generic6DOFJoint3D.Param
---@return number
function Generic6DOFJoint3D.get_param_z(param) end

---@param flag Generic6DOFJoint3D.Flag
---@param value boolean
function Generic6DOFJoint3D.set_flag_x(flag, value) end

---@param flag Generic6DOFJoint3D.Flag
---@return boolean
function Generic6DOFJoint3D.get_flag_x(flag) end

---@param flag Generic6DOFJoint3D.Flag
---@param value boolean
function Generic6DOFJoint3D.set_flag_y(flag, value) end

---@param flag Generic6DOFJoint3D.Flag
---@return boolean
function Generic6DOFJoint3D.get_flag_y(flag) end

---@param flag Generic6DOFJoint3D.Flag
---@param value boolean
function Generic6DOFJoint3D.set_flag_z(flag, value) end

---@param flag Generic6DOFJoint3D.Flag
---@return boolean
function Generic6DOFJoint3D.get_flag_z(flag) end
