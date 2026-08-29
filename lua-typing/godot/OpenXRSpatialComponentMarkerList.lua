---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialComponentMarkerList : OpenXRSpatialComponentData
local OpenXRSpatialComponentMarkerList = {}

---@param index integer
---@return OpenXRSpatialComponentMarkerList.MarkerType
function OpenXRSpatialComponentMarkerList.get_marker_type(index) end

---@param index integer
---@return integer
function OpenXRSpatialComponentMarkerList.get_marker_id(index) end

---@param snapshot RID
---@param index integer
---@return Object
function OpenXRSpatialComponentMarkerList.get_marker_data(snapshot, index) end
