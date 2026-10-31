---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeVec4Parameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value Vector4
local VisualShaderNodeVec4Parameter = {}

---@param enabled boolean
function VisualShaderNodeVec4Parameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeVec4Parameter.is_default_value_enabled() end

---@param value Vector4
function VisualShaderNodeVec4Parameter.set_default_value(value) end

---@return Vector4
function VisualShaderNodeVec4Parameter.get_default_value() end
