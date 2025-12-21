---@meta _
-- Generated API for game version 0.9.1

---@class SurfaceTool : RefCounted
local SurfaceTool = {}

---@param count SurfaceTool.SkinWeightCount
function SurfaceTool.set_skin_weight_count(count) end

---@return SurfaceTool.SkinWeightCount
function SurfaceTool.get_skin_weight_count() end

---@param channel_index integer
---@param format SurfaceTool.CustomFormat
function SurfaceTool.set_custom_format(channel_index, format) end

---@param channel_index integer
---@return SurfaceTool.CustomFormat
function SurfaceTool.get_custom_format(channel_index) end

---@param primitive Mesh.PrimitiveType
function SurfaceTool.begin(primitive) end

---@param vertex Vector3
function SurfaceTool.add_vertex(vertex) end

---@param color Color
function SurfaceTool.set_color(color) end

---@param normal Vector3
function SurfaceTool.set_normal(normal) end

---@param tangent Plane
function SurfaceTool.set_tangent(tangent) end

---@param uv Vector2
function SurfaceTool.set_uv(uv) end

---@param uv2 Vector2
function SurfaceTool.set_uv2(uv2) end

---@param bones PackedInt32Array
function SurfaceTool.set_bones(bones) end

---@param weights PackedFloat32Array
function SurfaceTool.set_weights(weights) end

---@param channel_index integer
---@param custom_color Color
function SurfaceTool.set_custom(channel_index, custom_color) end

---@param index integer
function SurfaceTool.set_smooth_group(index) end

---@param vertices PackedVector3Array
---@param uvs PackedVector2Array?  # Default = []
---@param colors PackedColorArray?  # Default = []
---@param uv2s PackedVector2Array?  # Default = []
---@param normals PackedVector3Array?  # Default = []
---@param tangents Array<Plane>?  # Default = []
function SurfaceTool.add_triangle_fan(vertices, uvs, colors, uv2s, normals, tangents) end

---@param index integer
function SurfaceTool.add_index(index) end

function SurfaceTool.index() end

function SurfaceTool.deindex() end

---@param flip boolean?  # Default = false
function SurfaceTool.generate_normals(flip) end

function SurfaceTool.generate_tangents() end

function SurfaceTool.optimize_indices_for_cache() end

---@return AABB
function SurfaceTool.get_aabb() end

---@param nd_threshold number
---@param target_index_count integer?  # Default = 3
---@return PackedInt32Array
function SurfaceTool.generate_lod(nd_threshold, target_index_count) end

---@param material Material
function SurfaceTool.set_material(material) end

---@return Mesh.PrimitiveType
function SurfaceTool.get_primitive_type() end

function SurfaceTool.clear() end

---@param existing Mesh
---@param surface integer
function SurfaceTool.create_from(existing, surface) end

---@param arrays Array<any>
---@param primitive_type Mesh.PrimitiveType?  # Default = 3
function SurfaceTool.create_from_arrays(arrays, primitive_type) end

---@param existing Mesh
---@param surface integer
---@param blend_shape string
function SurfaceTool.create_from_blend_shape(existing, surface, blend_shape) end

---@param existing Mesh
---@param surface integer
---@param transform Transform3D
function SurfaceTool.append_from(existing, surface, transform) end

---@param existing ArrayMesh?  # Default = <null>
---@param flags integer?  # Default = 0
---@return ArrayMesh
function SurfaceTool.commit(existing, flags) end

---@return Array<any>
function SurfaceTool.commit_to_arrays() end
