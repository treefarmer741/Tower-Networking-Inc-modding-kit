---@meta _
-- Generated API for game version 0.10.0

---@class GridMap : Node3D
---@field mesh_library MeshLibrary
---@field physics_material PhysicsMaterial
---@field cell_size Vector3
---@field cell_octant_size integer
---@field cell_center_x boolean
---@field cell_center_y boolean
---@field cell_center_z boolean
---@field cell_scale number
---@field collision_layer integer
---@field collision_mask integer
---@field collision_priority number
---@field bake_navigation boolean
local GridMap = {}

---@param layer integer
function GridMap.set_collision_layer(layer) end

---@return integer
function GridMap.get_collision_layer() end

---@param mask integer
function GridMap.set_collision_mask(mask) end

---@return integer
function GridMap.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function GridMap.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function GridMap.get_collision_mask_value(layer_number) end

---@param layer_number integer
---@param value boolean
function GridMap.set_collision_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function GridMap.get_collision_layer_value(layer_number) end

---@param priority number
function GridMap.set_collision_priority(priority) end

---@return number
function GridMap.get_collision_priority() end

---@param material PhysicsMaterial
function GridMap.set_physics_material(material) end

---@return PhysicsMaterial
function GridMap.get_physics_material() end

---@param bake_navigation boolean
function GridMap.set_bake_navigation(bake_navigation) end

---@return boolean
function GridMap.is_baking_navigation() end

---@param navigation_map RID
function GridMap.set_navigation_map(navigation_map) end

---@return RID
function GridMap.get_navigation_map() end

---@param mesh_library MeshLibrary
function GridMap.set_mesh_library(mesh_library) end

---@return MeshLibrary
function GridMap.get_mesh_library() end

---@param size Vector3
function GridMap.set_cell_size(size) end

---@return Vector3
function GridMap.get_cell_size() end

---@param scale number
function GridMap.set_cell_scale(scale) end

---@return number
function GridMap.get_cell_scale() end

---@param size integer
function GridMap.set_octant_size(size) end

---@return integer
function GridMap.get_octant_size() end

---@param position Vector3i
---@param item integer
---@param orientation integer?  # Default = 0
function GridMap.set_cell_item(position, item, orientation) end

---@param position Vector3i
---@return integer
function GridMap.get_cell_item(position) end

---@param position Vector3i
---@return integer
function GridMap.get_cell_item_orientation(position) end

---@param position Vector3i
---@return Basis
function GridMap.get_cell_item_basis(position) end

---@param index integer
---@return Basis
function GridMap.get_basis_with_orthogonal_index(index) end

---@param basis Basis
---@return integer
function GridMap.get_orthogonal_index_from_basis(basis) end

---@param local_position Vector3
---@return Vector3i
function GridMap.local_to_map(local_position) end

---@param map_position Vector3i
---@return Vector3
function GridMap.map_to_local(map_position) end

---@param resource Resource
function GridMap.resource_changed(resource) end

---@param enable boolean
function GridMap.set_center_x(enable) end

---@return boolean
function GridMap.get_center_x() end

---@param enable boolean
function GridMap.set_center_y(enable) end

---@return boolean
function GridMap.get_center_y() end

---@param enable boolean
function GridMap.set_center_z(enable) end

---@return boolean
function GridMap.get_center_z() end

function GridMap.clear() end

---@return Array<Vector3i>
function GridMap.get_used_cells() end

---@param item integer
---@return Array<Vector3i>
function GridMap.get_used_cells_by_item(item) end

---@return Array<any>
function GridMap.get_meshes() end

---@return Array<any>
function GridMap.get_bake_meshes() end

---@param idx integer
---@return RID
function GridMap.get_bake_mesh_instance(idx) end

function GridMap.clear_baked_meshes() end

---@param gen_lightmap_uv boolean?  # Default = false
---@param lightmap_uv_texel_size number?  # Default = 0.1
function GridMap.make_baked_meshes(gen_lightmap_uv, lightmap_uv_texel_size) end
