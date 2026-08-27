---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRMarkerTracker : OpenXRSpatialEntityTracker
---@field bounds_size integer
---@field marker_type integer
---@field marker_id integer
local OpenXRMarkerTracker = {}

---@param bounds_size Vector2
function OpenXRMarkerTracker.set_bounds_size(bounds_size) end

---@return Vector2
function OpenXRMarkerTracker.get_bounds_size() end

---@param marker_type OpenXRSpatialComponentMarkerList.MarkerType
function OpenXRMarkerTracker.set_marker_type(marker_type) end

---@return OpenXRSpatialComponentMarkerList.MarkerType
function OpenXRMarkerTracker.get_marker_type() end

---@param marker_id integer
function OpenXRMarkerTracker.set_marker_id(marker_id) end

---@return integer
function OpenXRMarkerTracker.get_marker_id() end

---@param marker_data Object
function OpenXRMarkerTracker.set_marker_data(marker_data) end

---@return Object
function OpenXRMarkerTracker.get_marker_data() end
