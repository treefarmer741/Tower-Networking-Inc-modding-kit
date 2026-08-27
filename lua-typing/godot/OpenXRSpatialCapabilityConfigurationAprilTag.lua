---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialCapabilityConfigurationAprilTag : OpenXRSpatialCapabilityConfigurationBaseHeader
---@field april_dict integer
local OpenXRSpatialCapabilityConfigurationAprilTag = {}

---@return PackedInt64Array
function OpenXRSpatialCapabilityConfigurationAprilTag.get_enabled_components() end

---@param april_dict OpenXRSpatialCapabilityConfigurationAprilTag.AprilTagDict
function OpenXRSpatialCapabilityConfigurationAprilTag.set_april_dict(april_dict) end

---@return OpenXRSpatialCapabilityConfigurationAprilTag.AprilTagDict
function OpenXRSpatialCapabilityConfigurationAprilTag.get_april_dict() end
