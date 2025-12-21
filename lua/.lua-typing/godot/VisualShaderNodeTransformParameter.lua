---@meta _
-- Generated API for game version 0.9.1

---@class VisualShaderNodeTransformParameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value Transform3D
local VisualShaderNodeTransformParameter = {}

---@param enabled boolean
function VisualShaderNodeTransformParameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeTransformParameter.is_default_value_enabled() end

---@param value Transform3D
function VisualShaderNodeTransformParameter.set_default_value(value) end

---@return Transform3D
function VisualShaderNodeTransformParameter.get_default_value() end
