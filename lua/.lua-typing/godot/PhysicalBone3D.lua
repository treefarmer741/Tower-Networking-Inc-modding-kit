---@meta _
-- Generated API for game version 0.9.1

---@class PhysicalBone3D : PhysicsBody3D
---@field joint_type integer
---@field joint_offset Transform3D
---@field joint_rotation Vector3
---@field body_offset Transform3D
---@field mass number
---@field friction number
---@field bounce number
---@field gravity_scale number
---@field custom_integrator boolean
---@field linear_damp_mode integer
---@field linear_damp number
---@field angular_damp_mode integer
---@field angular_damp number
---@field linear_velocity Vector3
---@field angular_velocity Vector3
---@field can_sleep boolean
local PhysicalBone3D = {}

---@param impulse Vector3
function PhysicalBone3D.apply_central_impulse(impulse) end

---@param impulse Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicalBone3D.apply_impulse(impulse, position) end

---@param joint_type PhysicalBone3D.JointType
function PhysicalBone3D.set_joint_type(joint_type) end

---@return PhysicalBone3D.JointType
function PhysicalBone3D.get_joint_type() end

---@param offset Transform3D
function PhysicalBone3D.set_joint_offset(offset) end

---@return Transform3D
function PhysicalBone3D.get_joint_offset() end

---@param euler Vector3
function PhysicalBone3D.set_joint_rotation(euler) end

---@return Vector3
function PhysicalBone3D.get_joint_rotation() end

---@param offset Transform3D
function PhysicalBone3D.set_body_offset(offset) end

---@return Transform3D
function PhysicalBone3D.get_body_offset() end

---@return boolean
function PhysicalBone3D.get_simulate_physics() end

---@return boolean
function PhysicalBone3D.is_simulating_physics() end

---@return integer
function PhysicalBone3D.get_bone_id() end

---@param mass number
function PhysicalBone3D.set_mass(mass) end

---@return number
function PhysicalBone3D.get_mass() end

---@param friction number
function PhysicalBone3D.set_friction(friction) end

---@return number
function PhysicalBone3D.get_friction() end

---@param bounce number
function PhysicalBone3D.set_bounce(bounce) end

---@return number
function PhysicalBone3D.get_bounce() end

---@param gravity_scale number
function PhysicalBone3D.set_gravity_scale(gravity_scale) end

---@return number
function PhysicalBone3D.get_gravity_scale() end

---@param linear_damp_mode PhysicalBone3D.DampMode
function PhysicalBone3D.set_linear_damp_mode(linear_damp_mode) end

---@return PhysicalBone3D.DampMode
function PhysicalBone3D.get_linear_damp_mode() end

---@param angular_damp_mode PhysicalBone3D.DampMode
function PhysicalBone3D.set_angular_damp_mode(angular_damp_mode) end

---@return PhysicalBone3D.DampMode
function PhysicalBone3D.get_angular_damp_mode() end

---@param linear_damp number
function PhysicalBone3D.set_linear_damp(linear_damp) end

---@return number
function PhysicalBone3D.get_linear_damp() end

---@param angular_damp number
function PhysicalBone3D.set_angular_damp(angular_damp) end

---@return number
function PhysicalBone3D.get_angular_damp() end

---@param linear_velocity Vector3
function PhysicalBone3D.set_linear_velocity(linear_velocity) end

---@return Vector3
function PhysicalBone3D.get_linear_velocity() end

---@param angular_velocity Vector3
function PhysicalBone3D.set_angular_velocity(angular_velocity) end

---@return Vector3
function PhysicalBone3D.get_angular_velocity() end

---@param enable boolean
function PhysicalBone3D.set_use_custom_integrator(enable) end

---@return boolean
function PhysicalBone3D.is_using_custom_integrator() end

---@param able_to_sleep boolean
function PhysicalBone3D.set_can_sleep(able_to_sleep) end

---@return boolean
function PhysicalBone3D.is_able_to_sleep() end
