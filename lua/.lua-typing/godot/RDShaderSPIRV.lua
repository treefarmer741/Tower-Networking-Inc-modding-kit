---@meta _
-- Generated API for game version 0.9.1

---@class RDShaderSPIRV : Resource
---@field bytecode_vertex PackedByteArray
---@field bytecode_fragment PackedByteArray
---@field bytecode_tesselation_control PackedByteArray
---@field bytecode_tesselation_evaluation PackedByteArray
---@field bytecode_compute PackedByteArray
---@field compile_error_vertex string
---@field compile_error_fragment string
---@field compile_error_tesselation_control string
---@field compile_error_tesselation_evaluation string
---@field compile_error_compute string
local RDShaderSPIRV = {}

---@param stage RenderingDevice.ShaderStage
---@param bytecode PackedByteArray
function RDShaderSPIRV.set_stage_bytecode(stage, bytecode) end

---@param stage RenderingDevice.ShaderStage
---@return PackedByteArray
function RDShaderSPIRV.get_stage_bytecode(stage) end

---@param stage RenderingDevice.ShaderStage
---@param compile_error string
function RDShaderSPIRV.set_stage_compile_error(stage, compile_error) end

---@param stage RenderingDevice.ShaderStage
---@return string
function RDShaderSPIRV.get_stage_compile_error(stage) end
