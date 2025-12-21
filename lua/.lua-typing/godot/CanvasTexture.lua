---@meta _
-- Generated API for game version 0.9.1

---@class CanvasTexture : Texture2D
---@field diffuse_texture Texture2D
---@field normal_texture Texture2D
---@field specular_texture Texture2D
---@field specular_color Color
---@field specular_shininess number
---@field texture_filter integer
---@field texture_repeat integer
local CanvasTexture = {}

---@param texture Texture2D
function CanvasTexture.set_diffuse_texture(texture) end

---@return Texture2D
function CanvasTexture.get_diffuse_texture() end

---@param texture Texture2D
function CanvasTexture.set_normal_texture(texture) end

---@return Texture2D
function CanvasTexture.get_normal_texture() end

---@param texture Texture2D
function CanvasTexture.set_specular_texture(texture) end

---@return Texture2D
function CanvasTexture.get_specular_texture() end

---@param color Color
function CanvasTexture.set_specular_color(color) end

---@return Color
function CanvasTexture.get_specular_color() end

---@param shininess number
function CanvasTexture.set_specular_shininess(shininess) end

---@return number
function CanvasTexture.get_specular_shininess() end

---@param filter CanvasItem.TextureFilter
function CanvasTexture.set_texture_filter(filter) end

---@return CanvasItem.TextureFilter
function CanvasTexture.get_texture_filter() end

---@param repeat_ CanvasItem.TextureRepeat
function CanvasTexture.set_texture_repeat(repeat_) end

---@return CanvasItem.TextureRepeat
function CanvasTexture.get_texture_repeat() end
