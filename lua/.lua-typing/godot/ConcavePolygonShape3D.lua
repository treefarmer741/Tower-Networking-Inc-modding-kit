---@meta _
-- Generated API for game version 0.9.1

---@class ConcavePolygonShape3D : Shape3D
---@field data PackedVector3Array
---@field backface_collision boolean
local ConcavePolygonShape3D = {}

---@param faces PackedVector3Array
function ConcavePolygonShape3D.set_faces(faces) end

---@return PackedVector3Array
function ConcavePolygonShape3D.get_faces() end

---@param enabled boolean
function ConcavePolygonShape3D.set_backface_collision_enabled(enabled) end

---@return boolean
function ConcavePolygonShape3D.is_backface_collision_enabled() end
