---@meta _
-- Generated API for game version 0.9.1

---@class CanvasLayer : Node
---@field layer integer
---@field visible boolean
---@field offset Vector2
---@field rotation number
---@field scale Vector2
---@field transform Transform2D
---@field custom_viewport Viewport
---@field follow_viewport_enabled boolean
---@field follow_viewport_scale number
local CanvasLayer = {}

---@param layer integer
function CanvasLayer.set_layer(layer) end

---@return integer
function CanvasLayer.get_layer() end

---@param visible boolean
function CanvasLayer.set_visible(visible) end

---@return boolean
function CanvasLayer.is_visible() end

function CanvasLayer.show() end

function CanvasLayer.hide() end

---@param transform Transform2D
function CanvasLayer.set_transform(transform) end

---@return Transform2D
function CanvasLayer.get_transform() end

---@return Transform2D
function CanvasLayer.get_final_transform() end

---@param offset Vector2
function CanvasLayer.set_offset(offset) end

---@return Vector2
function CanvasLayer.get_offset() end

---@param radians number
function CanvasLayer.set_rotation(radians) end

---@return number
function CanvasLayer.get_rotation() end

---@param scale Vector2
function CanvasLayer.set_scale(scale) end

---@return Vector2
function CanvasLayer.get_scale() end

---@param enable boolean
function CanvasLayer.set_follow_viewport(enable) end

---@return boolean
function CanvasLayer.is_following_viewport() end

---@param scale number
function CanvasLayer.set_follow_viewport_scale(scale) end

---@return number
function CanvasLayer.get_follow_viewport_scale() end

---@param viewport Node
function CanvasLayer.set_custom_viewport(viewport) end

---@return Node
function CanvasLayer.get_custom_viewport() end

---@return RID
function CanvasLayer.get_canvas() end
