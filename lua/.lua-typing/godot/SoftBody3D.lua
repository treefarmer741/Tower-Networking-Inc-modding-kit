---@meta _
-- Generated API for game version 0.9.1

---@class SoftBody3D : MeshInstance3D
---@field collision_layer integer
---@field collision_mask integer
---@field parent_collision_ignore string
---@field simulation_precision integer
---@field total_mass number
---@field linear_stiffness number
---@field shrinking_factor number
---@field pressure_coefficient number
---@field damping_coefficient number
---@field drag_coefficient number
---@field ray_pickable boolean
---@field disable_mode integer
local SoftBody3D = {}

---@return RID
function SoftBody3D.get_physics_rid() end

---@param collision_mask integer
function SoftBody3D.set_collision_mask(collision_mask) end

---@return integer
function SoftBody3D.get_collision_mask() end

---@param collision_layer integer
function SoftBody3D.set_collision_layer(collision_layer) end

---@return integer
function SoftBody3D.get_collision_layer() end

---@param layer_number integer
---@param value boolean
function SoftBody3D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function SoftBody3D.get_collision_mask_value(layer_number) end

---@param layer_number integer
---@param value boolean
function SoftBody3D.set_collision_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function SoftBody3D.get_collision_layer_value(layer_number) end

---@param parent_collision_ignore string
function SoftBody3D.set_parent_collision_ignore(parent_collision_ignore) end

---@return string
function SoftBody3D.get_parent_collision_ignore() end

---@param mode SoftBody3D.DisableMode
function SoftBody3D.set_disable_mode(mode) end

---@return SoftBody3D.DisableMode
function SoftBody3D.get_disable_mode() end

---@return Array<PhysicsBody3D>
function SoftBody3D.get_collision_exceptions() end

---@param body Node
function SoftBody3D.add_collision_exception_with(body) end

---@param body Node
function SoftBody3D.remove_collision_exception_with(body) end

---@param simulation_precision integer
function SoftBody3D.set_simulation_precision(simulation_precision) end

---@return integer
function SoftBody3D.get_simulation_precision() end

---@param mass number
function SoftBody3D.set_total_mass(mass) end

---@return number
function SoftBody3D.get_total_mass() end

---@param linear_stiffness number
function SoftBody3D.set_linear_stiffness(linear_stiffness) end

---@return number
function SoftBody3D.get_linear_stiffness() end

---@param shrinking_factor number
function SoftBody3D.set_shrinking_factor(shrinking_factor) end

---@return number
function SoftBody3D.get_shrinking_factor() end

---@param pressure_coefficient number
function SoftBody3D.set_pressure_coefficient(pressure_coefficient) end

---@return number
function SoftBody3D.get_pressure_coefficient() end

---@param damping_coefficient number
function SoftBody3D.set_damping_coefficient(damping_coefficient) end

---@return number
function SoftBody3D.get_damping_coefficient() end

---@param drag_coefficient number
function SoftBody3D.set_drag_coefficient(drag_coefficient) end

---@return number
function SoftBody3D.get_drag_coefficient() end

---@param point_index integer
---@return Vector3
function SoftBody3D.get_point_transform(point_index) end

---@param point_index integer
---@param impulse Vector3
function SoftBody3D.apply_impulse(point_index, impulse) end

---@param point_index integer
---@param force Vector3
function SoftBody3D.apply_force(point_index, force) end

---@param impulse Vector3
function SoftBody3D.apply_central_impulse(impulse) end

---@param force Vector3
function SoftBody3D.apply_central_force(force) end

---@param point_index integer
---@param pinned boolean
---@param attachment_path string?  # Default = 
---@param insert_at integer?  # Default = -1
function SoftBody3D.set_point_pinned(point_index, pinned, attachment_path, insert_at) end

---@param point_index integer
---@return boolean
function SoftBody3D.is_point_pinned(point_index) end

---@param ray_pickable boolean
function SoftBody3D.set_ray_pickable(ray_pickable) end

---@return boolean
function SoftBody3D.is_ray_pickable() end
