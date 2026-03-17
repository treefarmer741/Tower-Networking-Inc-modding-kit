---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsRayQueryParameters2D : RefCounted
---@field from Vector2
---@field to Vector2
---@field collision_mask integer
---@field exclude Array<RID>
---@field collide_with_bodies boolean
---@field collide_with_areas boolean
---@field hit_from_inside boolean
local PhysicsRayQueryParameters2D = {}

---@param from Vector2
---@param to Vector2
---@param collision_mask integer?  # Default = 4294967295
---@param exclude Array<RID>?  # Default = []
---@return PhysicsRayQueryParameters2D
function PhysicsRayQueryParameters2D.create(from, to, collision_mask, exclude) end

---@param from Vector2
function PhysicsRayQueryParameters2D.set_from(from) end

---@return Vector2
function PhysicsRayQueryParameters2D.get_from() end

---@param to Vector2
function PhysicsRayQueryParameters2D.set_to(to) end

---@return Vector2
function PhysicsRayQueryParameters2D.get_to() end

---@param collision_mask integer
function PhysicsRayQueryParameters2D.set_collision_mask(collision_mask) end

---@return integer
function PhysicsRayQueryParameters2D.get_collision_mask() end

---@param exclude Array<RID>
function PhysicsRayQueryParameters2D.set_exclude(exclude) end

---@return Array<RID>
function PhysicsRayQueryParameters2D.get_exclude() end

---@param enable boolean
function PhysicsRayQueryParameters2D.set_collide_with_bodies(enable) end

---@return boolean
function PhysicsRayQueryParameters2D.is_collide_with_bodies_enabled() end

---@param enable boolean
function PhysicsRayQueryParameters2D.set_collide_with_areas(enable) end

---@return boolean
function PhysicsRayQueryParameters2D.is_collide_with_areas_enabled() end

---@param enable boolean
function PhysicsRayQueryParameters2D.set_hit_from_inside(enable) end

---@return boolean
function PhysicsRayQueryParameters2D.is_hit_from_inside_enabled() end
