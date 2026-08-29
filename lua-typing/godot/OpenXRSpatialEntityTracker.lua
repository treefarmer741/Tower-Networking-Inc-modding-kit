---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialEntityTracker : XRPositionalTracker
---@field entity RID
---@field spatial_tracking_state integer
local OpenXRSpatialEntityTracker = {}

---@param entity RID
function OpenXRSpatialEntityTracker.set_entity(entity) end

---@return RID
function OpenXRSpatialEntityTracker.get_entity() end

---@param spatial_tracking_state OpenXRSpatialEntityTracker.EntityTrackingState
function OpenXRSpatialEntityTracker.set_spatial_tracking_state(spatial_tracking_state) end

---@return OpenXRSpatialEntityTracker.EntityTrackingState
function OpenXRSpatialEntityTracker.get_spatial_tracking_state() end
