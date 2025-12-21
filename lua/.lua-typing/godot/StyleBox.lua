---@meta _
-- Generated API for game version 0.9.1

---@class StyleBox : Resource
---@field content_margin_left number
---@field content_margin_top number
---@field content_margin_right number
---@field content_margin_bottom number
local StyleBox = {}

---@return Vector2
function StyleBox.get_minimum_size() end

---@param margin Side
---@param offset number
function StyleBox.set_content_margin(margin, offset) end

---@param offset number
function StyleBox.set_content_margin_all(offset) end

---@param margin Side
---@return number
function StyleBox.get_content_margin(margin) end

---@param margin Side
---@return number
function StyleBox.get_margin(margin) end

---@return Vector2
function StyleBox.get_offset() end

---@param canvas_item RID
---@param rect Rect2
function StyleBox.draw(canvas_item, rect) end

---@return CanvasItem
function StyleBox.get_current_item_drawn() end

---@param point Vector2
---@param rect Rect2
---@return boolean
function StyleBox.test_mask(point, rect) end
