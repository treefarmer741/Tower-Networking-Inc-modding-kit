---@meta _
-- Generated API for game version 0.9.1

---@class GLTFPhysicsShape : Resource
---@field shape_type string
---@field size Vector3
---@field radius number
---@field height number
---@field is_trigger boolean
---@field mesh_index integer
---@field importer_mesh ImporterMesh
local GLTFPhysicsShape = {}

---@param shape_node CollisionShape3D
---@return GLTFPhysicsShape
function GLTFPhysicsShape.from_node(shape_node) end

---@param cache_shapes boolean?  # Default = false
---@return CollisionShape3D
function GLTFPhysicsShape.to_node(cache_shapes) end

---@param shape_resource Shape3D
---@return GLTFPhysicsShape
function GLTFPhysicsShape.from_resource(shape_resource) end

---@param cache_shapes boolean?  # Default = false
---@return Shape3D
function GLTFPhysicsShape.to_resource(cache_shapes) end

---@param dictionary table<any,any>
---@return GLTFPhysicsShape
function GLTFPhysicsShape.from_dictionary(dictionary) end

---@return table<any,any>
function GLTFPhysicsShape.to_dictionary() end

---@return string
function GLTFPhysicsShape.get_shape_type() end

---@param shape_type string
function GLTFPhysicsShape.set_shape_type(shape_type) end

---@return Vector3
function GLTFPhysicsShape.get_size() end

---@param size Vector3
function GLTFPhysicsShape.set_size(size) end

---@return number
function GLTFPhysicsShape.get_radius() end

---@param radius number
function GLTFPhysicsShape.set_radius(radius) end

---@return number
function GLTFPhysicsShape.get_height() end

---@param height number
function GLTFPhysicsShape.set_height(height) end

---@return boolean
function GLTFPhysicsShape.get_is_trigger() end

---@param is_trigger boolean
function GLTFPhysicsShape.set_is_trigger(is_trigger) end

---@return integer
function GLTFPhysicsShape.get_mesh_index() end

---@param mesh_index integer
function GLTFPhysicsShape.set_mesh_index(mesh_index) end

---@return ImporterMesh
function GLTFPhysicsShape.get_importer_mesh() end

---@param importer_mesh ImporterMesh
function GLTFPhysicsShape.set_importer_mesh(importer_mesh) end
