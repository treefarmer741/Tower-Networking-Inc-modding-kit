---@meta _
-- Generated API for game version 0.13.3

---@class OpenXRSpatialCapabilityConfigurationAruco : OpenXRSpatialCapabilityConfigurationBaseHeader
---@field aruco_dict integer
local OpenXRSpatialCapabilityConfigurationAruco = {}

---@return PackedInt64Array
function OpenXRSpatialCapabilityConfigurationAruco.get_enabled_components() end

---@param aruco_dict OpenXRSpatialCapabilityConfigurationAruco.ArucoDict
function OpenXRSpatialCapabilityConfigurationAruco.set_aruco_dict(aruco_dict) end

---@return OpenXRSpatialCapabilityConfigurationAruco.ArucoDict
function OpenXRSpatialCapabilityConfigurationAruco.get_aruco_dict() end
