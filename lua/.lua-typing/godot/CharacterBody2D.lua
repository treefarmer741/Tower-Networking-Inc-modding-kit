---@meta _
-- Generated API for game version 0.10.0

---@class CharacterBody2D : PhysicsBody2D
---@field motion_mode integer
---@field up_direction Vector2
---@field velocity Vector2
---@field slide_on_ceiling boolean
---@field max_slides integer
---@field wall_min_slide_angle number
---@field floor_stop_on_slope boolean
---@field floor_constant_speed boolean
---@field floor_block_on_wall boolean
---@field floor_max_angle number
---@field floor_snap_length number
---@field platform_on_leave integer
---@field platform_floor_layers integer
---@field platform_wall_layers integer
---@field safe_margin number
local CharacterBody2D = {}

---@return boolean
function CharacterBody2D.move_and_slide() end

function CharacterBody2D.apply_floor_snap() end

---@param velocity Vector2
function CharacterBody2D.set_velocity(velocity) end

---@return Vector2
function CharacterBody2D.get_velocity() end

---@param margin number
function CharacterBody2D.set_safe_margin(margin) end

---@return number
function CharacterBody2D.get_safe_margin() end

---@return boolean
function CharacterBody2D.is_floor_stop_on_slope_enabled() end

---@param enabled boolean
function CharacterBody2D.set_floor_stop_on_slope_enabled(enabled) end

---@param enabled boolean
function CharacterBody2D.set_floor_constant_speed_enabled(enabled) end

---@return boolean
function CharacterBody2D.is_floor_constant_speed_enabled() end

---@param enabled boolean
function CharacterBody2D.set_floor_block_on_wall_enabled(enabled) end

---@return boolean
function CharacterBody2D.is_floor_block_on_wall_enabled() end

---@param enabled boolean
function CharacterBody2D.set_slide_on_ceiling_enabled(enabled) end

---@return boolean
function CharacterBody2D.is_slide_on_ceiling_enabled() end

---@param exclude_layer integer
function CharacterBody2D.set_platform_floor_layers(exclude_layer) end

---@return integer
function CharacterBody2D.get_platform_floor_layers() end

---@param exclude_layer integer
function CharacterBody2D.set_platform_wall_layers(exclude_layer) end

---@return integer
function CharacterBody2D.get_platform_wall_layers() end

---@return integer
function CharacterBody2D.get_max_slides() end

---@param max_slides integer
function CharacterBody2D.set_max_slides(max_slides) end

---@return number
function CharacterBody2D.get_floor_max_angle() end

---@param radians number
function CharacterBody2D.set_floor_max_angle(radians) end

---@return number
function CharacterBody2D.get_floor_snap_length() end

---@param floor_snap_length number
function CharacterBody2D.set_floor_snap_length(floor_snap_length) end

---@return number
function CharacterBody2D.get_wall_min_slide_angle() end

---@param radians number
function CharacterBody2D.set_wall_min_slide_angle(radians) end

---@return Vector2
function CharacterBody2D.get_up_direction() end

---@param up_direction Vector2
function CharacterBody2D.set_up_direction(up_direction) end

---@param mode CharacterBody2D.MotionMode
function CharacterBody2D.set_motion_mode(mode) end

---@return CharacterBody2D.MotionMode
function CharacterBody2D.get_motion_mode() end

---@param on_leave_apply_velocity CharacterBody2D.PlatformOnLeave
function CharacterBody2D.set_platform_on_leave(on_leave_apply_velocity) end

---@return CharacterBody2D.PlatformOnLeave
function CharacterBody2D.get_platform_on_leave() end

---@return boolean
function CharacterBody2D.is_on_floor() end

---@return boolean
function CharacterBody2D.is_on_floor_only() end

---@return boolean
function CharacterBody2D.is_on_ceiling() end

---@return boolean
function CharacterBody2D.is_on_ceiling_only() end

---@return boolean
function CharacterBody2D.is_on_wall() end

---@return boolean
function CharacterBody2D.is_on_wall_only() end

---@return Vector2
function CharacterBody2D.get_floor_normal() end

---@return Vector2
function CharacterBody2D.get_wall_normal() end

---@return Vector2
function CharacterBody2D.get_last_motion() end

---@return Vector2
function CharacterBody2D.get_position_delta() end

---@return Vector2
function CharacterBody2D.get_real_velocity() end

---@param up_direction Vector2?  # Default = (0.0, -1.0)
---@return number
function CharacterBody2D.get_floor_angle(up_direction) end

---@return Vector2
function CharacterBody2D.get_platform_velocity() end

---@return integer
function CharacterBody2D.get_slide_collision_count() end

---@param slide_idx integer
---@return KinematicCollision2D
function CharacterBody2D.get_slide_collision(slide_idx) end

---@return KinematicCollision2D
function CharacterBody2D.get_last_slide_collision() end
