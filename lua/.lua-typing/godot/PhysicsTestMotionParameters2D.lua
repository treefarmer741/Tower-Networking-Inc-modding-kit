---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsTestMotionParameters2D : RefCounted
---@field from Transform2D
---@field motion Vector2
---@field margin number
---@field collide_separation_ray boolean
---@field exclude_bodies Array<RID>
---@field exclude_objects Array<any>
---@field recovery_as_collision boolean
local PhysicsTestMotionParameters2D = {}

---@return Transform2D
function PhysicsTestMotionParameters2D.get_from() end

---@param from Transform2D
function PhysicsTestMotionParameters2D.set_from(from) end

---@return Vector2
function PhysicsTestMotionParameters2D.get_motion() end

---@param motion Vector2
function PhysicsTestMotionParameters2D.set_motion(motion) end

---@return number
function PhysicsTestMotionParameters2D.get_margin() end

---@param margin number
function PhysicsTestMotionParameters2D.set_margin(margin) end

---@return boolean
function PhysicsTestMotionParameters2D.is_collide_separation_ray_enabled() end

---@param enabled boolean
function PhysicsTestMotionParameters2D.set_collide_separation_ray_enabled(enabled) end

---@return Array<RID>
function PhysicsTestMotionParameters2D.get_exclude_bodies() end

---@param exclude_list Array<RID>
function PhysicsTestMotionParameters2D.set_exclude_bodies(exclude_list) end

---@return Array<integer>
function PhysicsTestMotionParameters2D.get_exclude_objects() end

---@param exclude_list Array<integer>
function PhysicsTestMotionParameters2D.set_exclude_objects(exclude_list) end

---@return boolean
function PhysicsTestMotionParameters2D.is_recovery_as_collision_enabled() end

---@param enabled boolean
function PhysicsTestMotionParameters2D.set_recovery_as_collision_enabled(enabled) end
