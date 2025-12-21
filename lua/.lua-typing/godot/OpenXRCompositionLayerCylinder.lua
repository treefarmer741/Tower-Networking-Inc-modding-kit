---@meta _
-- Generated API for game version 0.9.1

---@class OpenXRCompositionLayerCylinder : OpenXRCompositionLayer
---@field radius number
---@field aspect_ratio number
---@field central_angle number
---@field fallback_segments integer
local OpenXRCompositionLayerCylinder = {}

---@param radius number
function OpenXRCompositionLayerCylinder.set_radius(radius) end

---@return number
function OpenXRCompositionLayerCylinder.get_radius() end

---@param aspect_ratio number
function OpenXRCompositionLayerCylinder.set_aspect_ratio(aspect_ratio) end

---@return number
function OpenXRCompositionLayerCylinder.get_aspect_ratio() end

---@param angle number
function OpenXRCompositionLayerCylinder.set_central_angle(angle) end

---@return number
function OpenXRCompositionLayerCylinder.get_central_angle() end

---@param segments integer
function OpenXRCompositionLayerCylinder.set_fallback_segments(segments) end

---@return integer
function OpenXRCompositionLayerCylinder.get_fallback_segments() end
