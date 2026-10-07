---@meta _
-- Generated API for game version 0.10.0

---@class OpenXRCompositionLayerEquirect : OpenXRCompositionLayer
---@field radius number
---@field central_horizontal_angle number
---@field upper_vertical_angle number
---@field lower_vertical_angle number
---@field fallback_segments integer
local OpenXRCompositionLayerEquirect = {}

---@param radius number
function OpenXRCompositionLayerEquirect.set_radius(radius) end

---@return number
function OpenXRCompositionLayerEquirect.get_radius() end

---@param angle number
function OpenXRCompositionLayerEquirect.set_central_horizontal_angle(angle) end

---@return number
function OpenXRCompositionLayerEquirect.get_central_horizontal_angle() end

---@param angle number
function OpenXRCompositionLayerEquirect.set_upper_vertical_angle(angle) end

---@return number
function OpenXRCompositionLayerEquirect.get_upper_vertical_angle() end

---@param angle number
function OpenXRCompositionLayerEquirect.set_lower_vertical_angle(angle) end

---@return number
function OpenXRCompositionLayerEquirect.get_lower_vertical_angle() end

---@param segments integer
function OpenXRCompositionLayerEquirect.set_fallback_segments(segments) end

---@return integer
function OpenXRCompositionLayerEquirect.get_fallback_segments() end
