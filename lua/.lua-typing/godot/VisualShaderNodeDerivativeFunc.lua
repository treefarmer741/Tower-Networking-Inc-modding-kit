---@meta _
-- Generated API for game version 0.9.1

---@class VisualShaderNodeDerivativeFunc : VisualShaderNode
---@field op_type integer
---@field precision integer
local VisualShaderNodeDerivativeFunc = {
	---@type integer
	["function"] = nil,
}

---@param type VisualShaderNodeDerivativeFunc.OpType
function VisualShaderNodeDerivativeFunc.set_op_type(type) end

---@return VisualShaderNodeDerivativeFunc.OpType
function VisualShaderNodeDerivativeFunc.get_op_type() end

---@param func VisualShaderNodeDerivativeFunc.Function
function VisualShaderNodeDerivativeFunc.set_function(func) end

---@return VisualShaderNodeDerivativeFunc.Function
function VisualShaderNodeDerivativeFunc.get_function() end

---@param precision VisualShaderNodeDerivativeFunc.Precision
function VisualShaderNodeDerivativeFunc.set_precision(precision) end

---@return VisualShaderNodeDerivativeFunc.Precision
function VisualShaderNodeDerivativeFunc.get_precision() end
