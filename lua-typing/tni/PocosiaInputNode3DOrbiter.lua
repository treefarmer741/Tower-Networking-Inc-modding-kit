---@meta _
-- Generated API for game version 0.10.11

---@class PocosiaInputNode3DOrbiter : Node3D
---@field target_mindrag_sens_mult number
---@field orbital_target Node3D
---@field background_rotation_speed number
---@field orbital_control_key MouseButton
---@field polar_limit number
---@field wasd_control_enabled boolean
---@field wasd_orbit_speed number
---@field wasd_rate_min number
---@field wasd_rate_max number
---@field inverted_mouse boolean
---@field input_disabled boolean
---@field ref_drag_pixels number
---@field drags_per_rotation_min number
---@field drags_per_rotation_max number
---@field mouse_pan_enabled boolean
---@field pan_control_key MouseButton
---@field panning_speed number
---@field tangential_threshold number
---@field tangential_lerp_speed number
---@field tangential_max_tilt_deg number
---@field tangential_kickback_mult number
---@field zoom_speed number
---@field zoom_lerp_speed number
---@field min_radius number
---@field max_radius number
---@field input_type string
---@field focus_lerp_speed number
---@field focus_zoom_margin number
---@field orbital_point Vector3
---@field radius number
---@field target_radius number
---@field theta number
---@field phi number
---@field tangential_blend number
---@field is_dragging boolean
---@field is_tangential boolean
---@field is_panning boolean
---@field focusing_target Node3D
---@field target_theta number
---@field target_phi number
---@field target_blend number
---@field target_yaw number
---@field target_pitch number
---@field pan_yaw number
---@field pan_pitch number
---@field norm_radius number
local PocosiaInputNode3DOrbiter = {}

function PocosiaInputNode3DOrbiter.reset_pan() end

---@param event InputEvent
function PocosiaInputNode3DOrbiter.handle_input(event) end

function PocosiaInputNode3DOrbiter.stop_focusing() end

---@param node Node3D
---@return boolean
function PocosiaInputNode3DOrbiter.try_focus_node3d(node) end

---@param focus_pos Vector3
---@return Object
function PocosiaInputNode3DOrbiter.get_params_for_focus(focus_pos) end
