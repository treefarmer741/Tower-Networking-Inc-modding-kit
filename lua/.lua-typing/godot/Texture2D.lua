---@meta _
-- Generated API for game version 0.9.1

---@class Texture2D : Texture
local Texture2D = {}

---@return integer
function Texture2D.get_width() end

---@return integer
function Texture2D.get_height() end

---@return Vector2
function Texture2D.get_size() end

---@return boolean
function Texture2D.has_alpha() end

---@param canvas_item RID
---@param position Vector2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
function Texture2D.draw(canvas_item, position, modulate, transpose) end

---@param canvas_item RID
---@param rect Rect2
---@param tile boolean
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
function Texture2D.draw_rect(canvas_item, rect, tile, modulate, transpose) end

---@param canvas_item RID
---@param rect Rect2
---@param src_rect Rect2
---@param modulate Color?  # Default = (1.0, 1.0, 1.0, 1.0)
---@param transpose boolean?  # Default = false
---@param clip_uv boolean?  # Default = true
function Texture2D.draw_rect_region(canvas_item, rect, src_rect, modulate, transpose, clip_uv) end

---@return Image
function Texture2D.get_image() end

---@return Resource
function Texture2D.create_placeholder() end
