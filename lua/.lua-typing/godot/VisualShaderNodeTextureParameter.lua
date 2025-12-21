---@meta _
-- Generated API for game version 0.9.1

---@class VisualShaderNodeTextureParameter : VisualShaderNodeParameter
---@field texture_type integer
---@field color_default integer
---@field texture_filter integer
---@field texture_repeat integer
---@field texture_source integer
local VisualShaderNodeTextureParameter = {}

---@param type VisualShaderNodeTextureParameter.TextureType
function VisualShaderNodeTextureParameter.set_texture_type(type) end

---@return VisualShaderNodeTextureParameter.TextureType
function VisualShaderNodeTextureParameter.get_texture_type() end

---@param color VisualShaderNodeTextureParameter.ColorDefault
function VisualShaderNodeTextureParameter.set_color_default(color) end

---@return VisualShaderNodeTextureParameter.ColorDefault
function VisualShaderNodeTextureParameter.get_color_default() end

---@param filter VisualShaderNodeTextureParameter.TextureFilter
function VisualShaderNodeTextureParameter.set_texture_filter(filter) end

---@return VisualShaderNodeTextureParameter.TextureFilter
function VisualShaderNodeTextureParameter.get_texture_filter() end

---@param repeat_ VisualShaderNodeTextureParameter.TextureRepeat
function VisualShaderNodeTextureParameter.set_texture_repeat(repeat_) end

---@return VisualShaderNodeTextureParameter.TextureRepeat
function VisualShaderNodeTextureParameter.get_texture_repeat() end

---@param source VisualShaderNodeTextureParameter.TextureSource
function VisualShaderNodeTextureParameter.set_texture_source(source) end

---@return VisualShaderNodeTextureParameter.TextureSource
function VisualShaderNodeTextureParameter.get_texture_source() end
