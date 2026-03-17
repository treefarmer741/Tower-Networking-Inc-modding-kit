---@meta _
-- Generated API for game version 0.10.0

---@class PocosiaMotEntRigid3D : RigidBody3D
---@field motcol_hit_mag number # Constant value: 0.5
---@field motion_damp_factor number
---@field motion_force_magnitude number
---@field motion_stop_threshold number
---@field treat_area_as_obstacles boolean
---@field main_cs_np string
---@field motion_noprogress_giveup_enabled boolean
---@field motion_noprogress_giveup_duration number
---@field motion_noprogress_giveup_tolerance number
---@field look_follow_speed number
---@field angular_damp_factor number
---@field climb_force_magnitude number
---@field motion_target_position Vector3
---@field has_motion_target boolean
---@field look_follow_target_position Vector3
---@field has_look_follow_target boolean
---@field is_on_platform boolean
---@field shape Shape3D
---@field height number
---@field radius number
local PocosiaMotEntRigid3D = {}
---@enum PocosiaMotEntRigid3D.MotionDecision
PocosiaMotEntRigid3D.MotionDecision = {
	["NOTHING"] = 0,
	["JUMP"] = 1,
	["CLIMB"] = 2,
}

---@param new_target Vector3
function PocosiaMotEntRigid3D.set_motion_target(new_target) end

function PocosiaMotEntRigid3D.stop_motion() end

---@param new_target Vector3
function PocosiaMotEntRigid3D.set_look_follow_target(new_target) end

function PocosiaMotEntRigid3D.stop_look_follow() end

---@param space_state PhysicsDirectSpaceState3D
---@param ray_dir_uv Vector3
---@return Object
function PocosiaMotEntRigid3D.test_motion(space_state, ray_dir_uv) end

---@return Array<RID>
function PocosiaMotEntRigid3D.get_additional_obstacle_exclusion() end

---@param space_state PhysicsDirectSpaceState3D
---@param ray_dir_uv Vector3
---@param ray_height_adjust number
---@return Object
function PocosiaMotEntRigid3D.test_ray_hit(space_state, ray_dir_uv, ray_height_adjust) end

---@param state PhysicsDirectBodyState3D
---@param current_transform Transform3D
---@param target_position Vector3
function PocosiaMotEntRigid3D.look_follow(state, current_transform, target_position) end
