---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeCompare : VisualShaderNode
---@field type integer
---@field condition integer
local VisualShaderNodeCompare = {
	---@type integer
	["function"] = nil,
}

---@param type VisualShaderNodeCompare.ComparisonType
function VisualShaderNodeCompare.set_comparison_type(type) end

---@return VisualShaderNodeCompare.ComparisonType
function VisualShaderNodeCompare.get_comparison_type() end

---@param func VisualShaderNodeCompare.Function
function VisualShaderNodeCompare.set_function(func) end

---@return VisualShaderNodeCompare.Function
function VisualShaderNodeCompare.get_function() end

---@param condition VisualShaderNodeCompare.Condition
function VisualShaderNodeCompare.set_condition(condition) end

---@return VisualShaderNodeCompare.Condition
function VisualShaderNodeCompare.get_condition() end
