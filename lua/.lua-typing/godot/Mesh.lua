---@meta _
-- Generated API for game version 0.9.1

---@class Mesh : Resource
---@field lightmap_size_hint Vector2i
local Mesh = {}

---@param size Vector2i
function Mesh.set_lightmap_size_hint(size) end

---@return Vector2i
function Mesh.get_lightmap_size_hint() end

---@return AABB
function Mesh.get_aabb() end

---@return PackedVector3Array
function Mesh.get_faces() end

---@return integer
function Mesh.get_surface_count() end

---@param surf_idx integer
---@return Array<any>
function Mesh.surface_get_arrays(surf_idx) end

---@param surf_idx integer
---@return Array<Array>
function Mesh.surface_get_blend_shape_arrays(surf_idx) end

---@param surf_idx integer
---@param material Material
function Mesh.surface_set_material(surf_idx, material) end

---@param surf_idx integer
---@return Material
function Mesh.surface_get_material(surf_idx) end

---@return Resource
function Mesh.create_placeholder() end

---@return ConcavePolygonShape3D
function Mesh.create_trimesh_shape() end

---@param clean boolean?  # Default = true
---@param simplify boolean?  # Default = false
---@return ConvexPolygonShape3D
function Mesh.create_convex_shape(clean, simplify) end

---@param margin number
---@return Mesh
function Mesh.create_outline(margin) end

---@return TriangleMesh
function Mesh.generate_triangle_mesh() end
