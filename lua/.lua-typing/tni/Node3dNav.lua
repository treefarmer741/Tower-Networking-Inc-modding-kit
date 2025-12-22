---@meta _
-- Generated API for game version 0.9.1

---@class Node3dNav : NavigationAgent3D
---@field sproto_controls_enabled boolean
---@field sproto_speed number
---@field sproto_rotation_speed number
---@field sproto_avoidance boolean
---@field n3d Node3D
---@field motion_target_direction Vector3
---@field motion_target_y_rotation number
---@field is_facing_target boolean
local Node3dNav = {}

---@param target Vector3
function Node3dNav.issue_move_order(target) end

function Node3dNav.stop_move() end
