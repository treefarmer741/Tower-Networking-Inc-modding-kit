---@meta _
-- Generated API for game version 0.9.1

---@class RDShaderFile : Resource
---@field base_error string
local RDShaderFile = {}

---@param bytecode RDShaderSPIRV
---@param version string?  # Default = 
function RDShaderFile.set_bytecode(bytecode, version) end

---@param version string?  # Default = 
---@return RDShaderSPIRV
function RDShaderFile.get_spirv(version) end

---@return Array<StringName>
function RDShaderFile.get_version_list() end

---@param error string
function RDShaderFile.set_base_error(error) end

---@return string
function RDShaderFile.get_base_error() end
