---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsRayQueryParameters3D : RefCounted
---@field from Vector3
---@field to Vector3
---@field collision_mask integer
---@field exclude Array<RID>
---@field collide_with_bodies boolean
---@field collide_with_areas boolean
---@field hit_from_inside boolean
---@field hit_back_faces boolean
local PhysicsRayQueryParameters3D = {}

---@param from Vector3
---@param to Vector3
---@param collision_mask integer?  # Default = 4294967295
---@param exclude Array<RID>?  # Default = []
---@return PhysicsRayQueryParameters3D
function PhysicsRayQueryParameters3D.create(from, to, collision_mask, exclude) end

---@param from Vector3
function PhysicsRayQueryParameters3D.set_from(from) end

---@return Vector3
function PhysicsRayQueryParameters3D.get_from() end

---@param to Vector3
function PhysicsRayQueryParameters3D.set_to(to) end

---@return Vector3
function PhysicsRayQueryParameters3D.get_to() end

---@param collision_mask integer
function PhysicsRayQueryParameters3D.set_collision_mask(collision_mask) end

---@return integer
function PhysicsRayQueryParameters3D.get_collision_mask() end

---@param exclude Array<RID>
function PhysicsRayQueryParameters3D.set_exclude(exclude) end

---@return Array<RID>
function PhysicsRayQueryParameters3D.get_exclude() end

---@param enable boolean
function PhysicsRayQueryParameters3D.set_collide_with_bodies(enable) end

---@return boolean
function PhysicsRayQueryParameters3D.is_collide_with_bodies_enabled() end

---@param enable boolean
function PhysicsRayQueryParameters3D.set_collide_with_areas(enable) end

---@return boolean
function PhysicsRayQueryParameters3D.is_collide_with_areas_enabled() end

---@param enable boolean
function PhysicsRayQueryParameters3D.set_hit_from_inside(enable) end

---@return boolean
function PhysicsRayQueryParameters3D.is_hit_from_inside_enabled() end

---@param enable boolean
function PhysicsRayQueryParameters3D.set_hit_back_faces(enable) end

---@return boolean
function PhysicsRayQueryParameters3D.is_hit_back_faces_enabled() end
