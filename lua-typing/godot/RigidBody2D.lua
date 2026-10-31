---@meta _
-- Generated API for game version 0.10.0

---@class RigidBody2D : PhysicsBody2D
---@field mass number
---@field physics_material_override PhysicsMaterial
---@field gravity_scale number
---@field center_of_mass_mode integer
---@field center_of_mass Vector2
---@field inertia number
---@field sleeping boolean
---@field can_sleep boolean
---@field lock_rotation boolean
---@field freeze boolean
---@field freeze_mode integer
---@field custom_integrator boolean
---@field continuous_cd integer
---@field contact_monitor boolean
---@field max_contacts_reported integer
---@field linear_velocity Vector2
---@field linear_damp_mode integer
---@field linear_damp number
---@field angular_velocity number
---@field angular_damp_mode integer
---@field angular_damp number
---@field constant_force Vector2
---@field constant_torque number
local RigidBody2D = {}

---@param mass number
function RigidBody2D.set_mass(mass) end

---@return number
function RigidBody2D.get_mass() end

---@return number
function RigidBody2D.get_inertia() end

---@param inertia number
function RigidBody2D.set_inertia(inertia) end

---@param mode RigidBody2D.CenterOfMassMode
function RigidBody2D.set_center_of_mass_mode(mode) end

---@return RigidBody2D.CenterOfMassMode
function RigidBody2D.get_center_of_mass_mode() end

---@param center_of_mass Vector2
function RigidBody2D.set_center_of_mass(center_of_mass) end

---@return Vector2
function RigidBody2D.get_center_of_mass() end

---@param physics_material_override PhysicsMaterial
function RigidBody2D.set_physics_material_override(physics_material_override) end

---@return PhysicsMaterial
function RigidBody2D.get_physics_material_override() end

---@param gravity_scale number
function RigidBody2D.set_gravity_scale(gravity_scale) end

---@return number
function RigidBody2D.get_gravity_scale() end

---@param linear_damp_mode RigidBody2D.DampMode
function RigidBody2D.set_linear_damp_mode(linear_damp_mode) end

---@return RigidBody2D.DampMode
function RigidBody2D.get_linear_damp_mode() end

---@param angular_damp_mode RigidBody2D.DampMode
function RigidBody2D.set_angular_damp_mode(angular_damp_mode) end

---@return RigidBody2D.DampMode
function RigidBody2D.get_angular_damp_mode() end

---@param linear_damp number
function RigidBody2D.set_linear_damp(linear_damp) end

---@return number
function RigidBody2D.get_linear_damp() end

---@param angular_damp number
function RigidBody2D.set_angular_damp(angular_damp) end

---@return number
function RigidBody2D.get_angular_damp() end

---@param linear_velocity Vector2
function RigidBody2D.set_linear_velocity(linear_velocity) end

---@return Vector2
function RigidBody2D.get_linear_velocity() end

---@param angular_velocity number
function RigidBody2D.set_angular_velocity(angular_velocity) end

---@return number
function RigidBody2D.get_angular_velocity() end

---@param amount integer
function RigidBody2D.set_max_contacts_reported(amount) end

---@return integer
function RigidBody2D.get_max_contacts_reported() end

---@return integer
function RigidBody2D.get_contact_count() end

---@param enable boolean
function RigidBody2D.set_use_custom_integrator(enable) end

---@return boolean
function RigidBody2D.is_using_custom_integrator() end

---@param enabled boolean
function RigidBody2D.set_contact_monitor(enabled) end

---@return boolean
function RigidBody2D.is_contact_monitor_enabled() end

---@param mode RigidBody2D.CCDMode
function RigidBody2D.set_continuous_collision_detection_mode(mode) end

---@return RigidBody2D.CCDMode
function RigidBody2D.get_continuous_collision_detection_mode() end

---@param axis_velocity Vector2
function RigidBody2D.set_axis_velocity(axis_velocity) end

---@param impulse Vector2?  # Default = (0.0, 0.0)
function RigidBody2D.apply_central_impulse(impulse) end

---@param impulse Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function RigidBody2D.apply_impulse(impulse, position) end

---@param torque number
function RigidBody2D.apply_torque_impulse(torque) end

---@param force Vector2
function RigidBody2D.apply_central_force(force) end

---@param force Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function RigidBody2D.apply_force(force, position) end

---@param torque number
function RigidBody2D.apply_torque(torque) end

---@param force Vector2
function RigidBody2D.add_constant_central_force(force) end

---@param force Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function RigidBody2D.add_constant_force(force, position) end

---@param torque number
function RigidBody2D.add_constant_torque(torque) end

---@param force Vector2
function RigidBody2D.set_constant_force(force) end

---@return Vector2
function RigidBody2D.get_constant_force() end

---@param torque number
function RigidBody2D.set_constant_torque(torque) end

---@return number
function RigidBody2D.get_constant_torque() end

---@param sleeping boolean
function RigidBody2D.set_sleeping(sleeping) end

---@return boolean
function RigidBody2D.is_sleeping() end

---@param able_to_sleep boolean
function RigidBody2D.set_can_sleep(able_to_sleep) end

---@return boolean
function RigidBody2D.is_able_to_sleep() end

---@param lock_rotation boolean
function RigidBody2D.set_lock_rotation_enabled(lock_rotation) end

---@return boolean
function RigidBody2D.is_lock_rotation_enabled() end

---@param freeze_mode boolean
function RigidBody2D.set_freeze_enabled(freeze_mode) end

---@return boolean
function RigidBody2D.is_freeze_enabled() end

---@param freeze_mode RigidBody2D.FreezeMode
function RigidBody2D.set_freeze_mode(freeze_mode) end

---@return RigidBody2D.FreezeMode
function RigidBody2D.get_freeze_mode() end

---@return Array<Node2D>
function RigidBody2D.get_colliding_bodies() end
