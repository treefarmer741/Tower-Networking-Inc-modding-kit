---@meta _
-- Generated API for game version 0.10.0

---@class ParallaxBackground : CanvasLayer
---@field scroll_offset Vector2
---@field scroll_base_offset Vector2
---@field scroll_base_scale Vector2
---@field scroll_limit_begin Vector2
---@field scroll_limit_end Vector2
---@field scroll_ignore_camera_zoom boolean
local ParallaxBackground = {}

---@param offset Vector2
function ParallaxBackground.set_scroll_offset(offset) end

---@return Vector2
function ParallaxBackground.get_scroll_offset() end

---@param offset Vector2
function ParallaxBackground.set_scroll_base_offset(offset) end

---@return Vector2
function ParallaxBackground.get_scroll_base_offset() end

---@param scale Vector2
function ParallaxBackground.set_scroll_base_scale(scale) end

---@return Vector2
function ParallaxBackground.get_scroll_base_scale() end

---@param offset Vector2
function ParallaxBackground.set_limit_begin(offset) end

---@return Vector2
function ParallaxBackground.get_limit_begin() end

---@param offset Vector2
function ParallaxBackground.set_limit_end(offset) end

---@return Vector2
function ParallaxBackground.get_limit_end() end

---@param ignore boolean
function ParallaxBackground.set_ignore_camera_zoom(ignore) end

---@return boolean
function ParallaxBackground.is_ignore_camera_zoom() end
