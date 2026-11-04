---@meta _
-- Generated API for game version 0.13.3

---@class OpenXRSpatialComponentMesh2DList : OpenXRSpatialComponentData
local OpenXRSpatialComponentMesh2DList = {}

---@param index integer
---@return Transform3D
function OpenXRSpatialComponentMesh2DList.get_transform(index) end

---@param snapshot RID
---@param index integer
---@return PackedVector2Array
function OpenXRSpatialComponentMesh2DList.get_vertices(snapshot, index) end

---@param snapshot RID
---@param index integer
---@return PackedInt32Array
function OpenXRSpatialComponentMesh2DList.get_indices(snapshot, index) end
