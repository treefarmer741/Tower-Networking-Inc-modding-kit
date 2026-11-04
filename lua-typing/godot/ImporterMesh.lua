---@meta _
-- Generated API for game version 0.10.0

---@class ImporterMesh : Resource
local ImporterMesh = {}

---@param name string
function ImporterMesh.add_blend_shape(name) end

---@return integer
function ImporterMesh.get_blend_shape_count() end

---@param blend_shape_idx integer
---@return string
function ImporterMesh.get_blend_shape_name(blend_shape_idx) end

---@param mode Mesh.BlendShapeMode
function ImporterMesh.set_blend_shape_mode(mode) end

---@return Mesh.BlendShapeMode
function ImporterMesh.get_blend_shape_mode() end

---@param primitive Mesh.PrimitiveType
---@param arrays Array<any>
---@param blend_shapes Array<Array>?  # Default = []
---@param lods table<any,any>?  # Default = {  }
---@param material Material?  # Default = <Object#null>
---@param name string?  # Default = 
---@param flags integer?  # Default = 0
function ImporterMesh.add_surface(primitive, arrays, blend_shapes, lods, material, name, flags) end

---@return integer
function ImporterMesh.get_surface_count() end

---@param surface_idx integer
---@return Mesh.PrimitiveType
function ImporterMesh.get_surface_primitive_type(surface_idx) end

---@param surface_idx integer
---@return string
function ImporterMesh.get_surface_name(surface_idx) end

---@param surface_idx integer
---@return Array<any>
function ImporterMesh.get_surface_arrays(surface_idx) end

---@param surface_idx integer
---@param blend_shape_idx integer
---@return Array<any>
function ImporterMesh.get_surface_blend_shape_arrays(surface_idx, blend_shape_idx) end

---@param surface_idx integer
---@return integer
function ImporterMesh.get_surface_lod_count(surface_idx) end

---@param surface_idx integer
---@param lod_idx integer
---@return number
function ImporterMesh.get_surface_lod_size(surface_idx, lod_idx) end

---@param surface_idx integer
---@param lod_idx integer
---@return PackedInt32Array
function ImporterMesh.get_surface_lod_indices(surface_idx, lod_idx) end

---@param surface_idx integer
---@return Material
function ImporterMesh.get_surface_material(surface_idx) end

---@param surface_idx integer
---@return integer
function ImporterMesh.get_surface_format(surface_idx) end

---@param surface_idx integer
---@param name string
function ImporterMesh.set_surface_name(surface_idx, name) end

---@param surface_idx integer
---@param material Material
function ImporterMesh.set_surface_material(surface_idx, material) end

---@param normal_merge_angle number
---@param normal_split_angle number
---@param bone_transform_array Array<any>
function ImporterMesh.generate_lods(normal_merge_angle, normal_split_angle, bone_transform_array) end

---@param base_mesh ArrayMesh?  # Default = <Object#null>
---@return ArrayMesh
function ImporterMesh.get_mesh(base_mesh) end

function ImporterMesh.clear() end

---@param size Vector2i
function ImporterMesh.set_lightmap_size_hint(size) end

---@return Vector2i
function ImporterMesh.get_lightmap_size_hint() end
