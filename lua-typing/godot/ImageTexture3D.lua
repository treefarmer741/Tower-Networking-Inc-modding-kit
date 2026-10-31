---@meta _
-- Generated API for game version 0.10.0

---@class ImageTexture3D : Texture3D
local ImageTexture3D = {}

---@param format Image.Format
---@param width integer
---@param height integer
---@param depth integer
---@param use_mipmaps boolean
---@param data Array<Image>
---@return Error
function ImageTexture3D.create(format, width, height, depth, use_mipmaps, data) end

---@param data Array<Image>
function ImageTexture3D.update(data) end
