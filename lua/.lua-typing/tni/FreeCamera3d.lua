---@meta _
-- Generated API for game version 0.9.1

---@class FreeCamera3d : Camera3D
---@field acceleration number
---@field move_speed number
---@field mouse_speed number
---@field controller_speed number
---@field controller_dead_zone number
---@field velocity Vector3
---@field look_angle Vector2
---@field controller_look Vector2
---@field motion_mode res://pocosia-godot-commons/nodes/cameras/free_camera_3d.gd.CameraMotionMode
local FreeCamera3d = {}
---@enum FreeCamera3d.CameraMotionMode
FreeCamera3d.CameraMotionMode = {
	["CAPTURED"] = 0,
	["ESCAPED"] = 1,
}
