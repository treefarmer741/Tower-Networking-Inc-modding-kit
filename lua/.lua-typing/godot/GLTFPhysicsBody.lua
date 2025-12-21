---@meta _
-- Generated API for game version 0.9.1

---@class GLTFPhysicsBody : Resource
---@field body_type string
---@field mass number
---@field linear_velocity Vector3
---@field angular_velocity Vector3
---@field center_of_mass Vector3
---@field inertia_diagonal Vector3
---@field inertia_orientation Quaternion
---@field inertia_tensor Basis
local GLTFPhysicsBody = {}

---@param body_node CollisionObject3D
---@return GLTFPhysicsBody
function GLTFPhysicsBody.from_node(body_node) end

---@return CollisionObject3D
function GLTFPhysicsBody.to_node() end

---@param dictionary table<any,any>
---@return GLTFPhysicsBody
function GLTFPhysicsBody.from_dictionary(dictionary) end

---@return table<any,any>
function GLTFPhysicsBody.to_dictionary() end

---@return string
function GLTFPhysicsBody.get_body_type() end

---@param body_type string
function GLTFPhysicsBody.set_body_type(body_type) end

---@return number
function GLTFPhysicsBody.get_mass() end

---@param mass number
function GLTFPhysicsBody.set_mass(mass) end

---@return Vector3
function GLTFPhysicsBody.get_linear_velocity() end

---@param linear_velocity Vector3
function GLTFPhysicsBody.set_linear_velocity(linear_velocity) end

---@return Vector3
function GLTFPhysicsBody.get_angular_velocity() end

---@param angular_velocity Vector3
function GLTFPhysicsBody.set_angular_velocity(angular_velocity) end

---@return Vector3
function GLTFPhysicsBody.get_center_of_mass() end

---@param center_of_mass Vector3
function GLTFPhysicsBody.set_center_of_mass(center_of_mass) end

---@return Vector3
function GLTFPhysicsBody.get_inertia_diagonal() end

---@param inertia_diagonal Vector3
function GLTFPhysicsBody.set_inertia_diagonal(inertia_diagonal) end

---@return Quaternion
function GLTFPhysicsBody.get_inertia_orientation() end

---@param inertia_orientation Quaternion
function GLTFPhysicsBody.set_inertia_orientation(inertia_orientation) end

---@return Basis
function GLTFPhysicsBody.get_inertia_tensor() end

---@param inertia_tensor Basis
function GLTFPhysicsBody.set_inertia_tensor(inertia_tensor) end
