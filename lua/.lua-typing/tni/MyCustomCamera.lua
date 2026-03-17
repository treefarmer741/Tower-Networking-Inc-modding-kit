---@meta _
-- Generated API for game version 0.10.0

---@class MyCustomCamera : Camera2D
---@field DEFAULT_ZOOM number # Constant value: 0.5
---@field MOVE_X_THRESHOLD number # Constant value: 930.0
---@field MOVE_Y_THRESHOLD number # Constant value: 500.0
---@field FAST_MOVE_MARGIN_X number
---@field FAST_MOVE_MARGIN_TOP number
---@field FAST_MOVE_MARGIN_BOTTOM number
---@field MAX_ZOOM number
---@field MIN_ZOOM number
---@field ZOOM_RATE number
---@field ZOOM_INCREMENT number
---@field sprint_modifier number
---@field zoom_enabled boolean
---@field fast_mode boolean
---@field target_zoom number
---@field mp_mouse Node2D
---@field current_location_idx integer
---@field current_location Location
---@field min_zoom number
---@field keyboard_move_velocity Vector2
---@field drag_origin Vector2
---@field dragging boolean
local MyCustomCamera = {}

function MyCustomCamera.warp_to_initial() end

---@param floor_id integer
function MyCustomCamera.warp_to_floor(floor_id) end

---@param dest Vector2
function MyCustomCamera.warp(dest) end

function MyCustomCamera.zoom_in() end

function MyCustomCamera.zoom_out() end
