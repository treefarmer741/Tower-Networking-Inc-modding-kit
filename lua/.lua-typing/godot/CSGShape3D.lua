---@meta _
-- Generated API for game version 0.9.1

---@class CSGShape3D : GeometryInstance3D
---@field operation integer
---@field snap number
---@field calculate_tangents boolean
---@field use_collision boolean
---@field collision_layer integer
---@field collision_mask integer
---@field collision_priority number
local CSGShape3D = {}

---@return boolean
function CSGShape3D.is_root_shape() end

---@param operation CSGShape3D.Operation
function CSGShape3D.set_operation(operation) end

---@return CSGShape3D.Operation
function CSGShape3D.get_operation() end

---@param snap number
function CSGShape3D.set_snap(snap) end

---@return number
function CSGShape3D.get_snap() end

---@param operation boolean
function CSGShape3D.set_use_collision(operation) end

---@return boolean
function CSGShape3D.is_using_collision() end

---@param layer integer
function CSGShape3D.set_collision_layer(layer) end

---@return integer
function CSGShape3D.get_collision_layer() end

---@param mask integer
function CSGShape3D.set_collision_mask(mask) end

---@return integer
function CSGShape3D.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function CSGShape3D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function CSGShape3D.get_collision_mask_value(layer_number) end

---@param layer_number integer
---@param value boolean
function CSGShape3D.set_collision_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function CSGShape3D.get_collision_layer_value(layer_number) end

---@param priority number
function CSGShape3D.set_collision_priority(priority) end

---@return number
function CSGShape3D.get_collision_priority() end

---@return ConcavePolygonShape3D
function CSGShape3D.bake_collision_shape() end

---@param enabled boolean
function CSGShape3D.set_calculate_tangents(enabled) end

---@return boolean
function CSGShape3D.is_calculating_tangents() end

---@return Array<any>
function CSGShape3D.get_meshes() end

---@return ArrayMesh
function CSGShape3D.bake_static_mesh() end
