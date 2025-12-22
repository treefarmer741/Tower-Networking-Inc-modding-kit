---@meta _
-- Generated API for game version 0.9.1

---@class FirstPersonCamera3d : Camera3D
---@field mouse_speed number
---@field look_arc_factor number
---@field detection_radius number
---@field detection_area_name string
---@field detection_layer integer
---@field look_angle Vector2
---@field detection_area Area3D
---@field mouse_input_captured boolean
local FirstPersonCamera3d = {}

---@param val boolean
function FirstPersonCamera3d.set_mouse_input_captured(val) end
