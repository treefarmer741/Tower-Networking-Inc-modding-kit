---@meta _
-- Generated API for game version 0.9.1

---@class ArrayOccluder3D : Occluder3D
---@field vertices PackedVector3Array
---@field indices PackedInt32Array
local ArrayOccluder3D = {}

---@param vertices PackedVector3Array
---@param indices PackedInt32Array
function ArrayOccluder3D.set_arrays(vertices, indices) end

---@param vertices PackedVector3Array
function ArrayOccluder3D.set_vertices(vertices) end

---@param indices PackedInt32Array
function ArrayOccluder3D.set_indices(indices) end
