---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialCapabilityConfigurationPlaneTracking : OpenXRSpatialCapabilityConfigurationBaseHeader
local OpenXRSpatialCapabilityConfigurationPlaneTracking = {}

---@return boolean
function OpenXRSpatialCapabilityConfigurationPlaneTracking.supports_mesh_2d() end

---@return boolean
function OpenXRSpatialCapabilityConfigurationPlaneTracking.supports_polygons() end

---@return boolean
function OpenXRSpatialCapabilityConfigurationPlaneTracking.supports_labels() end

---@return PackedInt64Array
function OpenXRSpatialCapabilityConfigurationPlaneTracking.get_enabled_components() end
