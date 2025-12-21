---@meta _
-- Generated API for game version 0.9.1

---@class Shader : Resource
---@field code string
local Shader = {}

---@return Shader.Mode
function Shader.get_mode() end

---@param code string
function Shader.set_code(code) end

---@return string
function Shader.get_code() end

---@param name string
---@param texture Texture
---@param index integer?  # Default = 0
function Shader.set_default_texture_parameter(name, texture, index) end

---@param name string
---@param index integer?  # Default = 0
---@return Texture
function Shader.get_default_texture_parameter(name, index) end

---@param get_groups boolean?  # Default = false
---@return Array<any>
function Shader.get_shader_uniform_list(get_groups) end

function Shader.inspect_native_shader_code() end
