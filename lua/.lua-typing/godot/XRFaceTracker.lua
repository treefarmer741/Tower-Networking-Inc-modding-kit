---@meta _
-- Generated API for game version 0.9.1

---@class XRFaceTracker : XRTracker
---@field blend_shapes PackedFloat32Array
local XRFaceTracker = {}

---@param blend_shape XRFaceTracker.BlendShapeEntry
---@return number
function XRFaceTracker.get_blend_shape(blend_shape) end

---@param blend_shape XRFaceTracker.BlendShapeEntry
---@param weight number
function XRFaceTracker.set_blend_shape(blend_shape, weight) end

---@return PackedFloat32Array
function XRFaceTracker.get_blend_shapes() end

---@param weights PackedFloat32Array
function XRFaceTracker.set_blend_shapes(weights) end
