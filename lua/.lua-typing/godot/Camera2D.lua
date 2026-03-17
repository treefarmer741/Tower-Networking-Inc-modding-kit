---@meta _
-- Generated API for game version 0.10.0

---@class Camera2D : Node2D
---@field offset Vector2
---@field anchor_mode integer
---@field ignore_rotation boolean
---@field enabled boolean
---@field zoom Vector2
---@field custom_viewport Viewport
---@field process_callback integer
---@field limit_enabled boolean
---@field limit_left integer
---@field limit_top integer
---@field limit_right integer
---@field limit_bottom integer
---@field limit_smoothed boolean
---@field position_smoothing_enabled boolean
---@field position_smoothing_speed number
---@field rotation_smoothing_enabled boolean
---@field rotation_smoothing_speed number
---@field drag_horizontal_enabled boolean
---@field drag_vertical_enabled boolean
---@field drag_horizontal_offset number
---@field drag_vertical_offset number
---@field drag_left_margin number
---@field drag_top_margin number
---@field drag_right_margin number
---@field drag_bottom_margin number
---@field editor_draw_screen boolean
---@field editor_draw_limits boolean
---@field editor_draw_drag_margin boolean
local Camera2D = {}

---@param offset Vector2
function Camera2D.set_offset(offset) end

---@return Vector2
function Camera2D.get_offset() end

---@param anchor_mode Camera2D.AnchorMode
function Camera2D.set_anchor_mode(anchor_mode) end

---@return Camera2D.AnchorMode
function Camera2D.get_anchor_mode() end

---@param ignore boolean
function Camera2D.set_ignore_rotation(ignore) end

---@return boolean
function Camera2D.is_ignoring_rotation() end

---@param mode Camera2D.Camera2DProcessCallback
function Camera2D.set_process_callback(mode) end

---@return Camera2D.Camera2DProcessCallback
function Camera2D.get_process_callback() end

---@param enabled boolean
function Camera2D.set_enabled(enabled) end

---@return boolean
function Camera2D.is_enabled() end

function Camera2D.make_current() end

---@return boolean
function Camera2D.is_current() end

---@param limit_enabled boolean
function Camera2D.set_limit_enabled(limit_enabled) end

---@return boolean
function Camera2D.is_limit_enabled() end

---@param margin Side
---@param limit integer
function Camera2D.set_limit(margin, limit) end

---@param margin Side
---@return integer
function Camera2D.get_limit(margin) end

---@param limit_smoothing_enabled boolean
function Camera2D.set_limit_smoothing_enabled(limit_smoothing_enabled) end

---@return boolean
function Camera2D.is_limit_smoothing_enabled() end

---@param enabled boolean
function Camera2D.set_drag_vertical_enabled(enabled) end

---@return boolean
function Camera2D.is_drag_vertical_enabled() end

---@param enabled boolean
function Camera2D.set_drag_horizontal_enabled(enabled) end

---@return boolean
function Camera2D.is_drag_horizontal_enabled() end

---@param offset number
function Camera2D.set_drag_vertical_offset(offset) end

---@return number
function Camera2D.get_drag_vertical_offset() end

---@param offset number
function Camera2D.set_drag_horizontal_offset(offset) end

---@return number
function Camera2D.get_drag_horizontal_offset() end

---@param margin Side
---@param drag_margin number
function Camera2D.set_drag_margin(margin, drag_margin) end

---@param margin Side
---@return number
function Camera2D.get_drag_margin(margin) end

---@return Vector2
function Camera2D.get_target_position() end

---@return Vector2
function Camera2D.get_screen_center_position() end

---@return number
function Camera2D.get_screen_rotation() end

---@param zoom Vector2
function Camera2D.set_zoom(zoom) end

---@return Vector2
function Camera2D.get_zoom() end

---@param viewport Node
function Camera2D.set_custom_viewport(viewport) end

---@return Node
function Camera2D.get_custom_viewport() end

---@param position_smoothing_speed number
function Camera2D.set_position_smoothing_speed(position_smoothing_speed) end

---@return number
function Camera2D.get_position_smoothing_speed() end

---@param enabled boolean
function Camera2D.set_position_smoothing_enabled(enabled) end

---@return boolean
function Camera2D.is_position_smoothing_enabled() end

---@param enabled boolean
function Camera2D.set_rotation_smoothing_enabled(enabled) end

---@return boolean
function Camera2D.is_rotation_smoothing_enabled() end

---@param speed number
function Camera2D.set_rotation_smoothing_speed(speed) end

---@return number
function Camera2D.get_rotation_smoothing_speed() end

function Camera2D.force_update_scroll() end

function Camera2D.reset_smoothing() end

function Camera2D.align() end

---@param screen_drawing_enabled boolean
function Camera2D.set_screen_drawing_enabled(screen_drawing_enabled) end

---@return boolean
function Camera2D.is_screen_drawing_enabled() end

---@param limit_drawing_enabled boolean
function Camera2D.set_limit_drawing_enabled(limit_drawing_enabled) end

---@return boolean
function Camera2D.is_limit_drawing_enabled() end

---@param margin_drawing_enabled boolean
function Camera2D.set_margin_drawing_enabled(margin_drawing_enabled) end

---@return boolean
function Camera2D.is_margin_drawing_enabled() end
