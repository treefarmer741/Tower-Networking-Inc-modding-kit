---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsServer3DRenderingServerHandler : Object
local PhysicsServer3DRenderingServerHandler = {}

---@param vertex_id integer
---@param vertex Vector3
function PhysicsServer3DRenderingServerHandler.set_vertex(vertex_id, vertex) end

---@param vertex_id integer
---@param normal Vector3
function PhysicsServer3DRenderingServerHandler.set_normal(vertex_id, normal) end

---@param aabb AABB
function PhysicsServer3DRenderingServerHandler.set_aabb(aabb) end
