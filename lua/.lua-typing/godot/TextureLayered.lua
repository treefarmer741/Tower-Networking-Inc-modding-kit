---@meta _
-- Generated API for game version 0.9.1

---@class TextureLayered : Texture
local TextureLayered = {}

---@return Image.Format
function TextureLayered.get_format() end

---@return TextureLayered.LayeredType
function TextureLayered.get_layered_type() end

---@return integer
function TextureLayered.get_width() end

---@return integer
function TextureLayered.get_height() end

---@return integer
function TextureLayered.get_layers() end

---@return boolean
function TextureLayered.has_mipmaps() end

---@param layer integer
---@return Image
function TextureLayered.get_layer_data(layer) end
