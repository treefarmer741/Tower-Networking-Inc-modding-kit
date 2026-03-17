---@meta _
-- Generated API for game version 0.10.0

---@class PrimitiveMesh : Mesh
---@field material BaseMaterial3D,ShaderMaterial
---@field custom_aabb AABB
---@field flip_faces boolean
---@field add_uv2 boolean
---@field uv2_padding number
local PrimitiveMesh = {}

---@param material Material
function PrimitiveMesh.set_material(material) end

---@return Material
function PrimitiveMesh.get_material() end

---@return Array<any>
function PrimitiveMesh.get_mesh_arrays() end

---@param aabb AABB
function PrimitiveMesh.set_custom_aabb(aabb) end

---@return AABB
function PrimitiveMesh.get_custom_aabb() end

---@param flip_faces boolean
function PrimitiveMesh.set_flip_faces(flip_faces) end

---@return boolean
function PrimitiveMesh.get_flip_faces() end

---@param add_uv2 boolean
function PrimitiveMesh.set_add_uv2(add_uv2) end

---@return boolean
function PrimitiveMesh.get_add_uv2() end

---@param uv2_padding number
function PrimitiveMesh.set_uv2_padding(uv2_padding) end

---@return number
function PrimitiveMesh.get_uv2_padding() end

function PrimitiveMesh.request_update() end
