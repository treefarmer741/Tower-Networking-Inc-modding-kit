---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeTexture : VisualShaderNode
---@field source integer
---@field texture Texture2D
---@field texture_type integer
local VisualShaderNodeTexture = {}

---@param value VisualShaderNodeTexture.Source
function VisualShaderNodeTexture.set_source(value) end

---@return VisualShaderNodeTexture.Source
function VisualShaderNodeTexture.get_source() end

---@param value Texture2D
function VisualShaderNodeTexture.set_texture(value) end

---@return Texture2D
function VisualShaderNodeTexture.get_texture() end

---@param value VisualShaderNodeTexture.TextureType
function VisualShaderNodeTexture.set_texture_type(value) end

---@return VisualShaderNodeTexture.TextureType
function VisualShaderNodeTexture.get_texture_type() end
