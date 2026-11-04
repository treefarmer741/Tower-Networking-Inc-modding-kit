---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeParameter : VisualShaderNode
---@field parameter_name string
---@field qualifier integer
local VisualShaderNodeParameter = {}

---@param name string
function VisualShaderNodeParameter.set_parameter_name(name) end

---@return string
function VisualShaderNodeParameter.get_parameter_name() end

---@param qualifier VisualShaderNodeParameter.Qualifier
function VisualShaderNodeParameter.set_qualifier(qualifier) end

---@return VisualShaderNodeParameter.Qualifier
function VisualShaderNodeParameter.get_qualifier() end
