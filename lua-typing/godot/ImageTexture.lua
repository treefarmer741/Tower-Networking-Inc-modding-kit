---@meta _
-- Generated API for game version 0.10.0

---@class ImageTexture : Texture2D
local ImageTexture = {}

---@param image Image
---@return ImageTexture
function ImageTexture.create_from_image(image) end

---@return Image.Format
function ImageTexture.get_format() end

---@param image Image
function ImageTexture.set_image(image) end

---@param image Image
function ImageTexture.update(image) end

---@param size Vector2i
function ImageTexture.set_size_override(size) end
