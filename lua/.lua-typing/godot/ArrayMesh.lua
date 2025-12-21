---@meta _
-- Generated API for game version 0.9.1

---@class ArrayMesh : Mesh
---@field blend_shape_mode integer
---@field custom_aabb AABB
---@field shadow_mesh ArrayMesh
local ArrayMesh = {}

---@param name string
function ArrayMesh.add_blend_shape(name) end

---@return integer
function ArrayMesh.get_blend_shape_count() end

---@param index integer
---@return string
function ArrayMesh.get_blend_shape_name(index) end

---@param index integer
---@param name string
function ArrayMesh.set_blend_shape_name(index, name) end

function ArrayMesh.clear_blend_shapes() end

---@param mode Mesh.BlendShapeMode
function ArrayMesh.set_blend_shape_mode(mode) end

---@return Mesh.BlendShapeMode
function ArrayMesh.get_blend_shape_mode() end

---@param primitive Mesh.PrimitiveType
---@param arrays Array<any>
---@param blend_shapes Array<Array>?  # Default = []
---@param lods table<any,any>?  # Default = {  }
---@param flags Mesh.ArrayFormat?  # Default = 0
function ArrayMesh.add_surface_from_arrays(primitive, arrays, blend_shapes, lods, flags) end

function ArrayMesh.clear_surfaces() end

---@param surf_idx integer
function ArrayMesh.surface_remove(surf_idx) end

---@param surf_idx integer
---@param offset integer
---@param data PackedByteArray
function ArrayMesh.surface_update_vertex_region(surf_idx, offset, data) end

---@param surf_idx integer
---@param offset integer
---@param data PackedByteArray
function ArrayMesh.surface_update_attribute_region(surf_idx, offset, data) end

---@param surf_idx integer
---@param offset integer
---@param data PackedByteArray
function ArrayMesh.surface_update_skin_region(surf_idx, offset, data) end

---@param surf_idx integer
---@return integer
function ArrayMesh.surface_get_array_len(surf_idx) end

---@param surf_idx integer
---@return integer
function ArrayMesh.surface_get_array_index_len(surf_idx) end

---@param surf_idx integer
---@return Mesh.ArrayFormat
function ArrayMesh.surface_get_format(surf_idx) end

---@param surf_idx integer
---@return Mesh.PrimitiveType
function ArrayMesh.surface_get_primitive_type(surf_idx) end

---@param name string
---@return integer
function ArrayMesh.surface_find_by_name(name) end

---@param surf_idx integer
---@param name string
function ArrayMesh.surface_set_name(surf_idx, name) end

---@param surf_idx integer
---@return string
function ArrayMesh.surface_get_name(surf_idx) end

function ArrayMesh.regen_normal_maps() end

---@param transform Transform3D
---@param texel_size number
---@return Error
function ArrayMesh.lightmap_unwrap(transform, texel_size) end

---@param aabb AABB
function ArrayMesh.set_custom_aabb(aabb) end

---@return AABB
function ArrayMesh.get_custom_aabb() end

---@param mesh ArrayMesh
function ArrayMesh.set_shadow_mesh(mesh) end

---@return ArrayMesh
function ArrayMesh.get_shadow_mesh() end
