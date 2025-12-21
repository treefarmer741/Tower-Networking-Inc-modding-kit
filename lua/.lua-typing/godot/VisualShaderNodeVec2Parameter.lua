---@meta _
-- Generated API for game version 0.9.1

---@class VisualShaderNodeVec2Parameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value Vector2
local VisualShaderNodeVec2Parameter = {}

---@param enabled boolean
function VisualShaderNodeVec2Parameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeVec2Parameter.is_default_value_enabled() end

---@param value Vector2
function VisualShaderNodeVec2Parameter.set_default_value(value) end

---@return Vector2
function VisualShaderNodeVec2Parameter.get_default_value() end
