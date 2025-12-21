---@meta _
-- Generated API for game version 0.9.1

---@class ShaderMaterial : Material
---@field shader Shader
local ShaderMaterial = {}

---@param shader Shader
function ShaderMaterial.set_shader(shader) end

---@return Shader
function ShaderMaterial.get_shader() end

---@param param string
---@param value Object
function ShaderMaterial.set_shader_parameter(param, value) end

---@param param string
---@return Object
function ShaderMaterial.get_shader_parameter(param) end
