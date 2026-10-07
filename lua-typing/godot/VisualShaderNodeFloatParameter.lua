---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeFloatParameter : VisualShaderNodeParameter
---@field hint integer
---@field min number
---@field max number
---@field step number
---@field default_value_enabled boolean
---@field default_value number
local VisualShaderNodeFloatParameter = {}

---@param hint VisualShaderNodeFloatParameter.Hint
function VisualShaderNodeFloatParameter.set_hint(hint) end

---@return VisualShaderNodeFloatParameter.Hint
function VisualShaderNodeFloatParameter.get_hint() end

---@param value number
function VisualShaderNodeFloatParameter.set_min(value) end

---@return number
function VisualShaderNodeFloatParameter.get_min() end

---@param value number
function VisualShaderNodeFloatParameter.set_max(value) end

---@return number
function VisualShaderNodeFloatParameter.get_max() end

---@param value number
function VisualShaderNodeFloatParameter.set_step(value) end

---@return number
function VisualShaderNodeFloatParameter.get_step() end

---@param enabled boolean
function VisualShaderNodeFloatParameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeFloatParameter.is_default_value_enabled() end

---@param value number
function VisualShaderNodeFloatParameter.set_default_value(value) end

---@return number
function VisualShaderNodeFloatParameter.get_default_value() end
