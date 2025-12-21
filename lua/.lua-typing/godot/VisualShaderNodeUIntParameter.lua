---@meta _
-- Generated API for game version 0.9.1

---@class VisualShaderNodeUIntParameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value integer
local VisualShaderNodeUIntParameter = {}

---@param enabled boolean
function VisualShaderNodeUIntParameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeUIntParameter.is_default_value_enabled() end

---@param value integer
function VisualShaderNodeUIntParameter.set_default_value(value) end

---@return integer
function VisualShaderNodeUIntParameter.get_default_value() end
