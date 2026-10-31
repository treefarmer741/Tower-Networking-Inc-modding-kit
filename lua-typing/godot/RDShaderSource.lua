---@meta _
-- Generated API for game version 0.10.0

---@class RDShaderSource : RefCounted
---@field source_vertex string
---@field source_fragment string
---@field source_tesselation_control string
---@field source_tesselation_evaluation string
---@field source_compute string
---@field language integer
local RDShaderSource = {}

---@param stage RenderingDevice.ShaderStage
---@param source string
function RDShaderSource.set_stage_source(stage, source) end

---@param stage RenderingDevice.ShaderStage
---@return string
function RDShaderSource.get_stage_source(stage) end

---@param language RenderingDevice.ShaderLanguage
function RDShaderSource.set_language(language) end

---@return RenderingDevice.ShaderLanguage
function RDShaderSource.get_language() end
