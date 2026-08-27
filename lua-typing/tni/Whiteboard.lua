---@meta _
-- Generated API for game version 0.12.1

---@class Whiteboard : Area2D
---@field ZINDEX integer # Constant value: 1500
---@field product_name string
---@field rendered_description string
---@field price integer
---@field alternate_listing_image Object
local Whiteboard = {}

---@param mpos Vector2
function Whiteboard.start_dragging(mpos) end

---@param mpos Vector2
function Whiteboard.update_drag(mpos) end

function Whiteboard.stop_dragging() end

function Whiteboard.adjust_height_by_location() end

---@param content string
---@param color Color
---@param font_index integer
---@param world_pos Vector2
function Whiteboard.try_accept_sticky_note(content, color, font_index, world_pos) end

---@param new_pos Vector2
function Whiteboard.elevator_move(new_pos) end
