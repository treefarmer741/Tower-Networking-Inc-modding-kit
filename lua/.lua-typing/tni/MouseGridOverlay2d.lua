---@meta _
-- Generated API for game version 0.9.1

---@class MouseGridOverlay2d : Node2D
---@field grid_size integer
---@field reveal_radius number
---@field grid_color Color
---@field grid_alpha number
---@field line_width number
---@field fade_start number
---@field segment_length number
---@field mouse_pos Vector2
local MouseGridOverlay2d = {}

---@param top_left Vector2
---@param bottom_right Vector2
function MouseGridOverlay2d.draw_grid_lines(top_left, bottom_right) end

---@param start Vector2
---@param end_ Vector2
function MouseGridOverlay2d.draw_faded_line(start, end_) end

---@param dist number
---@return number
function MouseGridOverlay2d.calculate_alpha(dist) end
