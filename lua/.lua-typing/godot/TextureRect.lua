---@meta _
-- Generated API for game version 0.9.1

---@class TextureRect : Control
---@field texture Texture2D
---@field expand_mode integer
---@field stretch_mode integer
---@field flip_h boolean
---@field flip_v boolean
local TextureRect = {}

---@param texture Texture2D
function TextureRect.set_texture(texture) end

---@return Texture2D
function TextureRect.get_texture() end

---@param expand_mode TextureRect.ExpandMode
function TextureRect.set_expand_mode(expand_mode) end

---@return TextureRect.ExpandMode
function TextureRect.get_expand_mode() end

---@param enable boolean
function TextureRect.set_flip_h(enable) end

---@return boolean
function TextureRect.is_flipped_h() end

---@param enable boolean
function TextureRect.set_flip_v(enable) end

---@return boolean
function TextureRect.is_flipped_v() end

---@param stretch_mode TextureRect.StretchMode
function TextureRect.set_stretch_mode(stretch_mode) end

---@return TextureRect.StretchMode
function TextureRect.get_stretch_mode() end
