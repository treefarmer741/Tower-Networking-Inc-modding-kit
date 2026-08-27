---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialQueryResultData : OpenXRSpatialComponentData
local OpenXRSpatialQueryResultData = {}

---@return integer
function OpenXRSpatialQueryResultData.get_capacity() end

---@param index integer
---@return integer
function OpenXRSpatialQueryResultData.get_entity_id(index) end

---@param index integer
---@return OpenXRSpatialEntityTracker.EntityTrackingState
function OpenXRSpatialQueryResultData.get_entity_state(index) end
