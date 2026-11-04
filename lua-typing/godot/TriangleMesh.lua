---@meta _
-- Generated API for game version 0.10.0

---@class TriangleMesh : RefCounted
local TriangleMesh = {}

---@param faces PackedVector3Array
---@return boolean
function TriangleMesh.create_from_faces(faces) end

---@return PackedVector3Array
function TriangleMesh.get_faces() end

---@param begin Vector3
---@param end_ Vector3
---@return table<any,any>
function TriangleMesh.intersect_segment(begin, end_) end

---@param begin Vector3
---@param dir Vector3
---@return table<any,any>
function TriangleMesh.intersect_ray(begin, dir) end
