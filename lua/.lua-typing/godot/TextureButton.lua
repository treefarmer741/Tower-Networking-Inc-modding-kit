---@meta _
-- Generated API for game version 0.9.1

---@class TextureButton : BaseButton
---@field texture_normal Texture2D
---@field texture_pressed Texture2D
---@field texture_hover Texture2D
---@field texture_disabled Texture2D
---@field texture_focused Texture2D
---@field texture_click_mask BitMap
---@field ignore_texture_size bool
---@field stretch_mode integer
---@field flip_h bool
---@field flip_v bool
local TextureButton = {}

---@param texture Texture2D
function TextureButton.set_texture_normal(texture) end

---@param texture Texture2D
function TextureButton.set_texture_pressed(texture) end

---@param texture Texture2D
function TextureButton.set_texture_hover(texture) end

---@param texture Texture2D
function TextureButton.set_texture_disabled(texture) end

---@param texture Texture2D
function TextureButton.set_texture_focused(texture) end

---@param mask BitMap
function TextureButton.set_click_mask(mask) end

---@param ignore boolean
function TextureButton.set_ignore_texture_size(ignore) end

---@param mode TextureButton.StretchMode
function TextureButton.set_stretch_mode(mode) end

---@param enable boolean
function TextureButton.set_flip_h(enable) end

---@return boolean
function TextureButton.is_flipped_h() end

---@param enable boolean
function TextureButton.set_flip_v(enable) end

---@return boolean
function TextureButton.is_flipped_v() end

---@return Texture2D
function TextureButton.get_texture_normal() end

---@return Texture2D
function TextureButton.get_texture_pressed() end

---@return Texture2D
function TextureButton.get_texture_hover() end

---@return Texture2D
function TextureButton.get_texture_disabled() end

---@return Texture2D
function TextureButton.get_texture_focused() end

---@return BitMap
function TextureButton.get_click_mask() end

---@return boolean
function TextureButton.get_ignore_texture_size() end

---@return TextureButton.StretchMode
function TextureButton.get_stretch_mode() end
