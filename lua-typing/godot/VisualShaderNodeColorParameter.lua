---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeColorParameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value Color
local VisualShaderNodeColorParameter = {}

---@param enabled boolean
function VisualShaderNodeColorParameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeColorParameter.is_default_value_enabled() end

---@param value Color
function VisualShaderNodeColorParameter.set_default_value(value) end

---@return Color
function VisualShaderNodeColorParameter.get_default_value() end
