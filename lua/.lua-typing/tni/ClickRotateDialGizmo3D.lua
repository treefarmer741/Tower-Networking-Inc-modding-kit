---@meta _
-- Generated API for game version 0.9.1

---@class ClickRotateDialGizmo3D : Area3D
---@field sensitivity_cfactor number
---@field sensitivity_max number
---@field rotating_base Node3D
---@field dial_start_deg number
---@field dial_max_deg number
---@field normalized_precision number
---@field camera_group_filter string
---@field normalized_value_float number
---@field snapped_normalized_value_float number
---@field sensitivity number
---@field active_camera Camera3D
---@field hold_tween Tween
local ClickRotateDialGizmo3D = {}

---@param value_f number
---@param _unused_normal_factor number?  # Default = 1.0
function ClickRotateDialGizmo3D.set_gizmo_value(value_f, _unused_normal_factor) end
