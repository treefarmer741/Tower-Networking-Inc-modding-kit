---@meta _
-- Generated API for game version 0.10.0

---@class MeshDataTool : RefCounted
local MeshDataTool = {}

function MeshDataTool.clear() end

---@param mesh ArrayMesh
---@param surface integer
---@return Error
function MeshDataTool.create_from_surface(mesh, surface) end

---@param mesh ArrayMesh
---@param compression_flags integer?  # Default = 0
---@return Error
function MeshDataTool.commit_to_surface(mesh, compression_flags) end

---@return integer
function MeshDataTool.get_format() end

---@return integer
function MeshDataTool.get_vertex_count() end

---@return integer
function MeshDataTool.get_edge_count() end

---@return integer
function MeshDataTool.get_face_count() end

---@param idx integer
---@param vertex Vector3
function MeshDataTool.set_vertex(idx, vertex) end

---@param idx integer
---@return Vector3
function MeshDataTool.get_vertex(idx) end

---@param idx integer
---@param normal Vector3
function MeshDataTool.set_vertex_normal(idx, normal) end

---@param idx integer
---@return Vector3
function MeshDataTool.get_vertex_normal(idx) end

---@param idx integer
---@param tangent Plane
function MeshDataTool.set_vertex_tangent(idx, tangent) end

---@param idx integer
---@return Plane
function MeshDataTool.get_vertex_tangent(idx) end

---@param idx integer
---@param uv Vector2
function MeshDataTool.set_vertex_uv(idx, uv) end

---@param idx integer
---@return Vector2
function MeshDataTool.get_vertex_uv(idx) end

---@param idx integer
---@param uv2 Vector2
function MeshDataTool.set_vertex_uv2(idx, uv2) end

---@param idx integer
---@return Vector2
function MeshDataTool.get_vertex_uv2(idx) end

---@param idx integer
---@param color Color
function MeshDataTool.set_vertex_color(idx, color) end

---@param idx integer
---@return Color
function MeshDataTool.get_vertex_color(idx) end

---@param idx integer
---@param bones PackedInt32Array
function MeshDataTool.set_vertex_bones(idx, bones) end

---@param idx integer
---@return PackedInt32Array
function MeshDataTool.get_vertex_bones(idx) end

---@param idx integer
---@param weights PackedFloat32Array
function MeshDataTool.set_vertex_weights(idx, weights) end

---@param idx integer
---@return PackedFloat32Array
function MeshDataTool.get_vertex_weights(idx) end

---@param idx integer
---@param meta Object
function MeshDataTool.set_vertex_meta(idx, meta) end

---@param idx integer
---@return Object
function MeshDataTool.get_vertex_meta(idx) end

---@param idx integer
---@return PackedInt32Array
function MeshDataTool.get_vertex_edges(idx) end

---@param idx integer
---@return PackedInt32Array
function MeshDataTool.get_vertex_faces(idx) end

---@param idx integer
---@param vertex integer
---@return integer
function MeshDataTool.get_edge_vertex(idx, vertex) end

---@param idx integer
---@return PackedInt32Array
function MeshDataTool.get_edge_faces(idx) end

---@param idx integer
---@param meta Object
function MeshDataTool.set_edge_meta(idx, meta) end

---@param idx integer
---@return Object
function MeshDataTool.get_edge_meta(idx) end

---@param idx integer
---@param vertex integer
---@return integer
function MeshDataTool.get_face_vertex(idx, vertex) end

---@param idx integer
---@param edge integer
---@return integer
function MeshDataTool.get_face_edge(idx, edge) end

---@param idx integer
---@param meta Object
function MeshDataTool.set_face_meta(idx, meta) end

---@param idx integer
---@return Object
function MeshDataTool.get_face_meta(idx) end

---@param idx integer
---@return Vector3
function MeshDataTool.get_face_normal(idx) end

---@param material Material
function MeshDataTool.set_material(material) end

---@return Material
function MeshDataTool.get_material() end
