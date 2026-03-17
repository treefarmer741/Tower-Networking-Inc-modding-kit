---@meta _
-- Generated API for game version 0.10.0

---@class Texture3D : Texture
local Texture3D = {}

---@return Image.Format
function Texture3D.get_format() end

---@return integer
function Texture3D.get_width() end

---@return integer
function Texture3D.get_height() end

---@return integer
function Texture3D.get_depth() end

---@return boolean
function Texture3D.has_mipmaps() end

---@return Array<Image>
function Texture3D.get_data() end

---@return Resource
function Texture3D.create_placeholder() end
