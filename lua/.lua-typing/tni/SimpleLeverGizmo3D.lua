---@meta _
-- Generated API for game version 0.10.0

---@class SimpleLeverGizmo3D : Area3D
---@field camera_group_filter string
---@field lever_positions_deg Array<any>
---@field auto_lever_steps boolean
---@field auto_lever_min_deg number
---@field auto_lever_max_deg number
---@field auto_lever_divisions number
---@field curr_lever_pos integer
---@field normalized_value number
---@field drag_start_pos Vector2
---@field drag_viewport Viewport
local SimpleLeverGizmo3D = {}

---@param lpos integer
---@param _unused_normal_factor number?  # Default = 1.0
function SimpleLeverGizmo3D.set_gizmo_value(lpos, _unused_normal_factor) end
