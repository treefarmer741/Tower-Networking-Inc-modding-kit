---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeCubemap : VisualShaderNode
---@field source integer
---@field cube_map Cubemap,CompressedCubemap,PlaceholderCubemap,TextureCubemapRD
---@field texture_type integer
local VisualShaderNodeCubemap = {}

---@param value VisualShaderNodeCubemap.Source
function VisualShaderNodeCubemap.set_source(value) end

---@return VisualShaderNodeCubemap.Source
function VisualShaderNodeCubemap.get_source() end

---@param value TextureLayered
function VisualShaderNodeCubemap.set_cube_map(value) end

---@return TextureLayered
function VisualShaderNodeCubemap.get_cube_map() end

---@param value VisualShaderNodeCubemap.TextureType
function VisualShaderNodeCubemap.set_texture_type(value) end

---@return VisualShaderNodeCubemap.TextureType
function VisualShaderNodeCubemap.get_texture_type() end
