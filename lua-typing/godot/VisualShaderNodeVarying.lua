---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeVarying : VisualShaderNode
---@field varying_name string
---@field varying_type integer
local VisualShaderNodeVarying = {}

---@param name string
function VisualShaderNodeVarying.set_varying_name(name) end

---@return string
function VisualShaderNodeVarying.get_varying_name() end

---@param type VisualShader.VaryingType
function VisualShaderNodeVarying.set_varying_type(type) end

---@return VisualShader.VaryingType
function VisualShaderNodeVarying.get_varying_type() end
