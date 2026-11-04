---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsDirectBodyState3D : Object
---@field step number
---@field inverse_mass number
---@field total_angular_damp number
---@field total_linear_damp number
---@field inverse_inertia Vector3
---@field inverse_inertia_tensor Basis
---@field total_gravity Vector3
---@field center_of_mass Vector3
---@field center_of_mass_local Vector3
---@field principal_inertia_axes Basis
---@field angular_velocity Vector3
---@field linear_velocity Vector3
---@field sleeping boolean
---@field collision_layer integer
---@field collision_mask integer
---@field transform Transform3D
local PhysicsDirectBodyState3D = {}

---@return Vector3
function PhysicsDirectBodyState3D.get_total_gravity() end

---@return number
function PhysicsDirectBodyState3D.get_total_linear_damp() end

---@return number
function PhysicsDirectBodyState3D.get_total_angular_damp() end

---@return Vector3
function PhysicsDirectBodyState3D.get_center_of_mass() end

---@return Vector3
function PhysicsDirectBodyState3D.get_center_of_mass_local() end

---@return Basis
function PhysicsDirectBodyState3D.get_principal_inertia_axes() end

---@return number
function PhysicsDirectBodyState3D.get_inverse_mass() end

---@return Vector3
function PhysicsDirectBodyState3D.get_inverse_inertia() end

---@return Basis
function PhysicsDirectBodyState3D.get_inverse_inertia_tensor() end

---@param velocity Vector3
function PhysicsDirectBodyState3D.set_linear_velocity(velocity) end

---@return Vector3
function PhysicsDirectBodyState3D.get_linear_velocity() end

---@param velocity Vector3
function PhysicsDirectBodyState3D.set_angular_velocity(velocity) end

---@return Vector3
function PhysicsDirectBodyState3D.get_angular_velocity() end

---@param transform Transform3D
function PhysicsDirectBodyState3D.set_transform(transform) end

---@return Transform3D
function PhysicsDirectBodyState3D.get_transform() end

---@param local_position Vector3
---@return Vector3
function PhysicsDirectBodyState3D.get_velocity_at_local_position(local_position) end

---@param impulse Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsDirectBodyState3D.apply_central_impulse(impulse) end

---@param impulse Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsDirectBodyState3D.apply_impulse(impulse, position) end

---@param impulse Vector3
function PhysicsDirectBodyState3D.apply_torque_impulse(impulse) end

---@param force Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsDirectBodyState3D.apply_central_force(force) end

---@param force Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsDirectBodyState3D.apply_force(force, position) end

---@param torque Vector3
function PhysicsDirectBodyState3D.apply_torque(torque) end

---@param force Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsDirectBodyState3D.add_constant_central_force(force) end

---@param force Vector3
---@param position Vector3?  # Default = (0.0, 0.0, 0.0)
function PhysicsDirectBodyState3D.add_constant_force(force, position) end

---@param torque Vector3
function PhysicsDirectBodyState3D.add_constant_torque(torque) end

---@param force Vector3
function PhysicsDirectBodyState3D.set_constant_force(force) end

---@return Vector3
function PhysicsDirectBodyState3D.get_constant_force() end

---@param torque Vector3
function PhysicsDirectBodyState3D.set_constant_torque(torque) end

---@return Vector3
function PhysicsDirectBodyState3D.get_constant_torque() end

---@param enabled boolean
function PhysicsDirectBodyState3D.set_sleep_state(enabled) end

---@return boolean
function PhysicsDirectBodyState3D.is_sleeping() end

---@param layer integer
function PhysicsDirectBodyState3D.set_collision_layer(layer) end

---@return integer
function PhysicsDirectBodyState3D.get_collision_layer() end

---@param mask integer
function PhysicsDirectBodyState3D.set_collision_mask(mask) end

---@return integer
function PhysicsDirectBodyState3D.get_collision_mask() end

---@return integer
function PhysicsDirectBodyState3D.get_contact_count() end

---@param contact_idx integer
---@return Vector3
function PhysicsDirectBodyState3D.get_contact_local_position(contact_idx) end

---@param contact_idx integer
---@return Vector3
function PhysicsDirectBodyState3D.get_contact_local_normal(contact_idx) end

---@param contact_idx integer
---@return Vector3
function PhysicsDirectBodyState3D.get_contact_impulse(contact_idx) end

---@param contact_idx integer
---@return integer
function PhysicsDirectBodyState3D.get_contact_local_shape(contact_idx) end

---@param contact_idx integer
---@return Vector3
function PhysicsDirectBodyState3D.get_contact_local_velocity_at_position(contact_idx) end

---@param contact_idx integer
---@return RID
function PhysicsDirectBodyState3D.get_contact_collider(contact_idx) end

---@param contact_idx integer
---@return Vector3
function PhysicsDirectBodyState3D.get_contact_collider_position(contact_idx) end

---@param contact_idx integer
---@return integer
function PhysicsDirectBodyState3D.get_contact_collider_id(contact_idx) end

---@param contact_idx integer
---@return Object
function PhysicsDirectBodyState3D.get_contact_collider_object(contact_idx) end

---@param contact_idx integer
---@return integer
function PhysicsDirectBodyState3D.get_contact_collider_shape(contact_idx) end

---@param contact_idx integer
---@return Vector3
function PhysicsDirectBodyState3D.get_contact_collider_velocity_at_position(contact_idx) end

---@return number
function PhysicsDirectBodyState3D.get_step() end

function PhysicsDirectBodyState3D.integrate_forces() end

---@return PhysicsDirectSpaceState3D
function PhysicsDirectBodyState3D.get_space_state() end
