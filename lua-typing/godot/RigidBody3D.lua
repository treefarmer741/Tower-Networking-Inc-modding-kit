---@meta _
-- Generated API for game version 0.10.0

---@class RigidBody3D : PhysicsBody3D
---@field mass number
---@field physics_material_override PhysicsMaterial
---@field gravity_scale number
---@field center_of_mass_mode integer
---@field center_of_mass Vector3
---@field inertia Vector3
---@field sleeping boolean
---@field can_sleep boolean
---@field lock_rotation boolean
---@field freeze boolean
---@field freeze_mode integer
---@field custom_integrator boolean
---@field continuous_cd boolean
---@field contact_monitor boolean
---@field max_contacts_reported integer
---@field linear_velocity Vector3
---@field linear_damp_mode integer
---@field linear_damp number
---@field angular_velocity Vector3
---@field angular_damp_mode integer
---@field angular_damp number
---@field constant_force Vector3
---@field constant_torque Vector3
local RigidBody3D = {}

---@param mass number
function RigidBody3D.set_mass(mass) end

---@return number
function RigidBody3D.get_mass() end

---@param inertia Vector3
function RigidBody3D.set_inertia(inertia) end

---@return Vector3
function RigidBody3D.get_inertia() end

---@param mode RigidBody3D.CenterOfMassMode
function RigidBody3D.set_center_of_mass_mode(mode) end

---@return RigidBody3D.CenterOfMassMode
function RigidBody3D.get_center_of_mass_mode() end

---@param center_of_mass Vector3
function RigidBody3D.set_center_of_mass(center_of_mass) end

---@return Vector3
function RigidBody3D.get_center_of_mass() end

---@param physics_material_override PhysicsMaterial
function RigidBody3D.set_physics_material_override(physics_material_override) end

---@return PhysicsMaterial
function RigidBody3D.get_physics_material_override() end

---@param linear_velocity Vector3
function RigidBody3D.set_linear_velocity(linear_velocity) end

---@return Vector3
function RigidBody3D.get_linear_velocity() end

---@param angular_velocity Vector3
function RigidBody3D.set_angular_velocity(angular_velocity) end

---@return Vector3
function RigidBody3D.get_angular_velocity() end

---@return Basis
function RigidBody3D.get_inverse_inertia_tensor() end

---@param gravity_scale number
function RigidBody3D.set_gravity_scale(gravity_scale) end

---@return number
function RigidBody3D.get_gravity_scale() end

---@param linear_damp_mode RigidBody3D.DampMode
function RigidBody3D.set_linear_damp_mode(linear_damp_mode) end

---@return RigidBody3D.DampMode
function RigidBody3D.get_linear_damp_mode() end

---@param angular_damp_mode RigidBody3D.DampMode
function RigidBody3D.set_angular_damp_mode(angular_damp_mode) end

---@return RigidBody3D.DampMode
function RigidBody3D.get_angular_damp_mode() end

---@param linear_damp number
function RigidBody3D.set_linear_damp(linear_damp) end

---@return number
function RigidBody3D.get_linear_damp() end

---@param angular_damp number
function RigidBody3D.set_angular_damp(angular_damp) end

---@return number
function RigidBody3D.get_angular_damp() end

---@param amount integer
function RigidBody3D.set_max_contacts_reported(amount) end

---@return integer
function RigidBody3D.get_max_contacts_reported() end

---@return integer
function RigidBody3D.get_contact_count() end

---@param enable boolean
function RigidBody3D.set_use_custom_integrator(enable) end

---@return boolean
function RigidBody3D.is_using_custom_integrator() end

---@param enabled boolean
function RigidBody3D.set_contact_monitor(enabled) end

---@return boolean
function RigidBody3D.is_contact_monitor_enabled() end

---@param enable boolean
function RigidBody3D.set_use_continuous_collision_detection(enable) end

---@return boolean
function RigidBody3D.is_using_continuous_collision_detection() end

---@param axis_velocity Vector3
function RigidBody3D.set_axis_velocity(axis_velocity) end

---@param impulse Vector3
function RigidBody3D.apply_central_impulse(impulse) end

---@param impulse Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function RigidBody3D.apply_impulse(impulse, position) end

---@param impulse Vector3
function RigidBody3D.apply_torque_impulse(impulse) end

---@param force Vector3
function RigidBody3D.apply_central_force(force) end

---@param force Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function RigidBody3D.apply_force(force, position) end

---@param torque Vector3
function RigidBody3D.apply_torque(torque) end

---@param force Vector3
function RigidBody3D.add_constant_central_force(force) end

---@param force Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function RigidBody3D.add_constant_force(force, position) end

---@param torque Vector3
function RigidBody3D.add_constant_torque(torque) end

---@param force Vector3
function RigidBody3D.set_constant_force(force) end

---@return Vector3
function RigidBody3D.get_constant_force() end

---@param torque Vector3
function RigidBody3D.set_constant_torque(torque) end

---@return Vector3
function RigidBody3D.get_constant_torque() end

---@param sleeping boolean
function RigidBody3D.set_sleeping(sleeping) end

---@return boolean
function RigidBody3D.is_sleeping() end

---@param able_to_sleep boolean
function RigidBody3D.set_can_sleep(able_to_sleep) end

---@return boolean
function RigidBody3D.is_able_to_sleep() end

---@param lock_rotation boolean
function RigidBody3D.set_lock_rotation_enabled(lock_rotation) end

---@return boolean
function RigidBody3D.is_lock_rotation_enabled() end

---@param freeze_mode boolean
function RigidBody3D.set_freeze_enabled(freeze_mode) end

---@return boolean
function RigidBody3D.is_freeze_enabled() end

---@param freeze_mode RigidBody3D.FreezeMode
function RigidBody3D.set_freeze_mode(freeze_mode) end

---@return RigidBody3D.FreezeMode
function RigidBody3D.get_freeze_mode() end

---@return Array<Node3D>
function RigidBody3D.get_colliding_bodies() end
