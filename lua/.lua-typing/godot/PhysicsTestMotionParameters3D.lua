---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsTestMotionParameters3D : RefCounted
---@field from Transform3D
---@field motion Vector3
---@field margin number
---@field max_collisions integer
---@field collide_separation_ray boolean
---@field exclude_bodies Array<RID>
---@field exclude_objects Array<any>
---@field recovery_as_collision boolean
local PhysicsTestMotionParameters3D = {}

---@return Transform3D
function PhysicsTestMotionParameters3D.get_from() end

---@param from Transform3D
function PhysicsTestMotionParameters3D.set_from(from) end

---@return Vector3
function PhysicsTestMotionParameters3D.get_motion() end

---@param motion Vector3
function PhysicsTestMotionParameters3D.set_motion(motion) end

---@return number
function PhysicsTestMotionParameters3D.get_margin() end

---@param margin number
function PhysicsTestMotionParameters3D.set_margin(margin) end

---@return integer
function PhysicsTestMotionParameters3D.get_max_collisions() end

---@param max_collisions integer
function PhysicsTestMotionParameters3D.set_max_collisions(max_collisions) end

---@return boolean
function PhysicsTestMotionParameters3D.is_collide_separation_ray_enabled() end

---@param enabled boolean
function PhysicsTestMotionParameters3D.set_collide_separation_ray_enabled(enabled) end

---@return Array<RID>
function PhysicsTestMotionParameters3D.get_exclude_bodies() end

---@param exclude_list Array<RID>
function PhysicsTestMotionParameters3D.set_exclude_bodies(exclude_list) end

---@return Array<integer>
function PhysicsTestMotionParameters3D.get_exclude_objects() end

---@param exclude_list Array<integer>
function PhysicsTestMotionParameters3D.set_exclude_objects(exclude_list) end

---@return boolean
function PhysicsTestMotionParameters3D.is_recovery_as_collision_enabled() end

---@param enabled boolean
function PhysicsTestMotionParameters3D.set_recovery_as_collision_enabled(enabled) end
