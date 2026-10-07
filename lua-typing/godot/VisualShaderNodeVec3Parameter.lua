---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeVec3Parameter : VisualShaderNodeParameter
---@field default_value_enabled boolean
---@field default_value Vector3
local VisualShaderNodeVec3Parameter = {}

---@param enabled boolean
function VisualShaderNodeVec3Parameter.set_default_value_enabled(enabled) end

---@return boolean
function VisualShaderNodeVec3Parameter.is_default_value_enabled() end

---@param value Vector3
function VisualShaderNodeVec3Parameter.set_default_value(value) end

---@return Vector3
function VisualShaderNodeVec3Parameter.get_default_value() end
