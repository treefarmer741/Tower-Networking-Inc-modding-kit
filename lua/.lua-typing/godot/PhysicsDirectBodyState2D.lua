---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsDirectBodyState2D : Object
---@field step number
---@field inverse_mass number
---@field inverse_inertia number
---@field total_angular_damp number
---@field total_linear_damp number
---@field total_gravity Vector2
---@field center_of_mass Vector2
---@field center_of_mass_local Vector2
---@field angular_velocity number
---@field linear_velocity Vector2
---@field sleeping boolean
---@field collision_layer integer
---@field collision_mask integer
---@field transform Transform2D
local PhysicsDirectBodyState2D = {}

---@return Vector2
function PhysicsDirectBodyState2D.get_total_gravity() end

---@return number
function PhysicsDirectBodyState2D.get_total_linear_damp() end

---@return number
function PhysicsDirectBodyState2D.get_total_angular_damp() end

---@return Vector2
function PhysicsDirectBodyState2D.get_center_of_mass() end

---@return Vector2
function PhysicsDirectBodyState2D.get_center_of_mass_local() end

---@return number
function PhysicsDirectBodyState2D.get_inverse_mass() end

---@return number
function PhysicsDirectBodyState2D.get_inverse_inertia() end

---@param velocity Vector2
function PhysicsDirectBodyState2D.set_linear_velocity(velocity) end

---@return Vector2
function PhysicsDirectBodyState2D.get_linear_velocity() end

---@param velocity number
function PhysicsDirectBodyState2D.set_angular_velocity(velocity) end

---@return number
function PhysicsDirectBodyState2D.get_angular_velocity() end

---@param transform Transform2D
function PhysicsDirectBodyState2D.set_transform(transform) end

---@return Transform2D
function PhysicsDirectBodyState2D.get_transform() end

---@param local_position Vector2
---@return Vector2
function PhysicsDirectBodyState2D.get_velocity_at_local_position(local_position) end

---@param impulse Vector2
function PhysicsDirectBodyState2D.apply_central_impulse(impulse) end

---@param impulse number
function PhysicsDirectBodyState2D.apply_torque_impulse(impulse) end

---@param impulse Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function PhysicsDirectBodyState2D.apply_impulse(impulse, position) end

---@param force Vector2?  # Default = (0.0, 0.0)
function PhysicsDirectBodyState2D.apply_central_force(force) end

---@param force Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function PhysicsDirectBodyState2D.apply_force(force, position) end

---@param torque number
function PhysicsDirectBodyState2D.apply_torque(torque) end

---@param force Vector2?  # Default = (0.0, 0.0)
function PhysicsDirectBodyState2D.add_constant_central_force(force) end

---@param force Vector2
---@param position Vector2?  # Default = (0.0, 0.0)
function PhysicsDirectBodyState2D.add_constant_force(force, position) end

---@param torque number
function PhysicsDirectBodyState2D.add_constant_torque(torque) end

---@param force Vector2
function PhysicsDirectBodyState2D.set_constant_force(force) end

---@return Vector2
function PhysicsDirectBodyState2D.get_constant_force() end

---@param torque number
function PhysicsDirectBodyState2D.set_constant_torque(torque) end

---@return number
function PhysicsDirectBodyState2D.get_constant_torque() end

---@param enabled boolean
function PhysicsDirectBodyState2D.set_sleep_state(enabled) end

---@return boolean
function PhysicsDirectBodyState2D.is_sleeping() end

---@param layer integer
function PhysicsDirectBodyState2D.set_collision_layer(layer) end

---@return integer
function PhysicsDirectBodyState2D.get_collision_layer() end

---@param mask integer
function PhysicsDirectBodyState2D.set_collision_mask(mask) end

---@return integer
function PhysicsDirectBodyState2D.get_collision_mask() end

---@return integer
function PhysicsDirectBodyState2D.get_contact_count() end

---@param contact_idx integer
---@return Vector2
function PhysicsDirectBodyState2D.get_contact_local_position(contact_idx) end

---@param contact_idx integer
---@return Vector2
function PhysicsDirectBodyState2D.get_contact_local_normal(contact_idx) end

---@param contact_idx integer
---@return integer
function PhysicsDirectBodyState2D.get_contact_local_shape(contact_idx) end

---@param contact_idx integer
---@return Vector2
function PhysicsDirectBodyState2D.get_contact_local_velocity_at_position(contact_idx) end

---@param contact_idx integer
---@return RID
function PhysicsDirectBodyState2D.get_contact_collider(contact_idx) end

---@param contact_idx integer
---@return Vector2
function PhysicsDirectBodyState2D.get_contact_collider_position(contact_idx) end

---@param contact_idx integer
---@return integer
function PhysicsDirectBodyState2D.get_contact_collider_id(contact_idx) end

---@param contact_idx integer
---@return Object
function PhysicsDirectBodyState2D.get_contact_collider_object(contact_idx) end

---@param contact_idx integer
---@return integer
function PhysicsDirectBodyState2D.get_contact_collider_shape(contact_idx) end

---@param contact_idx integer
---@return Vector2
function PhysicsDirectBodyState2D.get_contact_collider_velocity_at_position(contact_idx) end

---@param contact_idx integer
---@return Vector2
function PhysicsDirectBodyState2D.get_contact_impulse(contact_idx) end

---@return number
function PhysicsDirectBodyState2D.get_step() end

function PhysicsDirectBodyState2D.integrate_forces() end

---@return PhysicsDirectSpaceState2D
function PhysicsDirectBodyState2D.get_space_state() end
