---@meta _
-- Generated API for game version 0.9.1

---@class Charbod3dNav : NavigationAgent3D
---@field sproto_controls_enabled boolean
---@field sproto_speed number
---@field sproto_rotation_speed number
---@field alignment_rotation_speed number
---@field alignment_speed number
---@field motion_mode res://pocosia-godot-commons/nodes/nav_agents/charbod3d_nav.gd.NavAssistMotionMode
---@field cbod3 CharacterBody3D
---@field motion_target_direction Vector3
---@field motion_target_y_rotation number
---@field is_facing_target boolean
---@field alignment_target_quat Quaternion
---@field alignment_target_position Vector3
local Charbod3dNav = {}
---@enum Charbod3dNav.NavAssistMotionMode
Charbod3dNav.NavAssistMotionMode = {
	["DISABLED"] = 0,
	["SPROTO"] = 1,
	["ALIGNMENT"] = 2,
}

---@param tpos Vector3
function Charbod3dNav.issue_sp_move_order(tpos) end

function Charbod3dNav.stop_sp_move_order() end

---@param target_transform Transform3D
---@param ignore_direction boolean?  # Default = false
function Charbod3dNav.align_to_target(target_transform, ignore_direction) end
