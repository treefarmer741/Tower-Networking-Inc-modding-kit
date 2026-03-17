---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeIntParameter : VisualShaderNodeParameter
---@field hint integer
---@field min integer
---@field max integer
---@field step integer
---@field enum_names PackedStringArray
---@field default_value_enabled boolean
---@field default_value integer
local VisualShaderNodeIntParameter = {}

---@param hint VisualShaderNodeIntParameter.Hint
function VisualShaderNodeIntParameter.set_hint(hint) end

---@return VisualShaderNodeIntParameter.Hint
function VisualShaderNodeIntParameter.get_hint() end

---@param value integer
function VisualShaderNodeIntParameter.set_min(value) end

---@return integer
function VisualShaderNodeIntParameter.get_min() end

---@param value integer
function VisualShaderNodeIntParameter.set_max(value) end

---@return integer
function VisualShaderNodeIntParameter.get_max() end

---@param value integer
function VisualShaderNodeIntParameter.set_step(value) end

---@return integer
function VisualShaderNodeIntParameter.get_step() end

---@param names PackedStringArray
function VisualShaderNodeIntParameter.set_enum_names(names) end

---@return PackedStringArray
function VisualShaderNodeIntParameter.get_enum_names() end

---@param enabled boolean
function VisualShaderNodeIntParameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeIntParameter.is_default_value_enabled() end

---@param value integer
function VisualShaderNodeIntParameter.set_default_value(value) end

---@return integer
function VisualShaderNodeIntParameter.get_default_value() end
