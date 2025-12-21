---@meta _
-- Generated API for game version 0.9.1

---@class ImmediateMesh : Mesh
local ImmediateMesh = {}

---@param primitive Mesh.PrimitiveType
---@param material Material?  # Default = <Object#null>
function ImmediateMesh.surface_begin(primitive, material) end

---@param color Color
function ImmediateMesh.surface_set_color(color) end

---@param normal Vector3
function ImmediateMesh.surface_set_normal(normal) end

---@param tangent Plane
function ImmediateMesh.surface_set_tangent(tangent) end

---@param uv Vector2
function ImmediateMesh.surface_set_uv(uv) end

---@param uv2 Vector2
function ImmediateMesh.surface_set_uv2(uv2) end

---@param vertex Vector3
function ImmediateMesh.surface_add_vertex(vertex) end

---@param vertex Vector2
function ImmediateMesh.surface_add_vertex_2d(vertex) end

function ImmediateMesh.surface_end() end

function ImmediateMesh.clear_surfaces() end
