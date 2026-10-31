---@meta _
-- Generated API for game version 0.10.0

---@class Sprite3D : SpriteBase3D
---@field texture Texture2D
---@field hframes integer
---@field vframes integer
---@field frame integer
---@field frame_coords Vector2i
---@field region_enabled boolean
---@field region_rect Rect2
local Sprite3D = {}

---@param texture Texture2D
function Sprite3D.set_texture(texture) end

---@return Texture2D
function Sprite3D.get_texture() end

---@param enabled boolean
function Sprite3D.set_region_enabled(enabled) end

---@return boolean
function Sprite3D.is_region_enabled() end

---@param rect Rect2
function Sprite3D.set_region_rect(rect) end

---@return Rect2
function Sprite3D.get_region_rect() end

---@param frame integer
function Sprite3D.set_frame(frame) end

---@return integer
function Sprite3D.get_frame() end

---@param coords Vector2i
function Sprite3D.set_frame_coords(coords) end

---@return Vector2i
function Sprite3D.get_frame_coords() end

---@param vframes integer
function Sprite3D.set_vframes(vframes) end

---@return integer
function Sprite3D.get_vframes() end

---@param hframes integer
function Sprite3D.set_hframes(hframes) end

---@return integer
function Sprite3D.get_hframes() end
