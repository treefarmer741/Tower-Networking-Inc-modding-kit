---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeBooleanParameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value boolean
local VisualShaderNodeBooleanParameter = {}

---@param enabled boolean
function VisualShaderNodeBooleanParameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeBooleanParameter.is_default_value_enabled() end

---@param value boolean
function VisualShaderNodeBooleanParameter.set_default_value(value) end

---@return boolean
function VisualShaderNodeBooleanParameter.get_default_value() end
