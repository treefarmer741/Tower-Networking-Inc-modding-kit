---@meta _
-- Generated API for game version 0.10.0

---@class Sprite2D : Node2D
---@field texture Texture2D
---@field centered boolean
---@field offset Vector2
---@field flip_h boolean
---@field flip_v boolean
---@field hframes integer
---@field vframes integer
---@field frame integer
---@field frame_coords Vector2i
---@field region_enabled boolean
---@field region_rect Rect2
---@field region_filter_clip_enabled boolean
local Sprite2D = {}

---@param texture Texture2D
function Sprite2D.set_texture(texture) end

---@return Texture2D
function Sprite2D.get_texture() end

---@param centered boolean
function Sprite2D.set_centered(centered) end

---@return boolean
function Sprite2D.is_centered() end

---@param offset Vector2
function Sprite2D.set_offset(offset) end

---@return Vector2
function Sprite2D.get_offset() end

---@param flip_h boolean
function Sprite2D.set_flip_h(flip_h) end

---@return boolean
function Sprite2D.is_flipped_h() end

---@param flip_v boolean
function Sprite2D.set_flip_v(flip_v) end

---@return boolean
function Sprite2D.is_flipped_v() end

---@param enabled boolean
function Sprite2D.set_region_enabled(enabled) end

---@return boolean
function Sprite2D.is_region_enabled() end

---@param pos Vector2
---@return boolean
function Sprite2D.is_pixel_opaque(pos) end

---@param rect Rect2
function Sprite2D.set_region_rect(rect) end

---@return Rect2
function Sprite2D.get_region_rect() end

---@param enabled boolean
function Sprite2D.set_region_filter_clip_enabled(enabled) end

---@return boolean
function Sprite2D.is_region_filter_clip_enabled() end

---@param frame integer
function Sprite2D.set_frame(frame) end

---@return integer
function Sprite2D.get_frame() end

---@param coords Vector2i
function Sprite2D.set_frame_coords(coords) end

---@return Vector2i
function Sprite2D.get_frame_coords() end

---@param vframes integer
function Sprite2D.set_vframes(vframes) end

---@return integer
function Sprite2D.get_vframes() end

---@param hframes integer
function Sprite2D.set_hframes(hframes) end

---@return integer
function Sprite2D.get_hframes() end

---@return Rect2
function Sprite2D.get_rect() end
