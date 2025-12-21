---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsPointQueryParameters3D : RefCounted
---@field position Vector3
---@field collision_mask integer
---@field exclude Array<RID>
---@field collide_with_bodies boolean
---@field collide_with_areas boolean
local PhysicsPointQueryParameters3D = {}

---@param position Vector3
function PhysicsPointQueryParameters3D.set_position(position) end

---@return Vector3
function PhysicsPointQueryParameters3D.get_position() end

---@param collision_mask integer
function PhysicsPointQueryParameters3D.set_collision_mask(collision_mask) end

---@return integer
function PhysicsPointQueryParameters3D.get_collision_mask() end

---@param exclude Array<RID>
function PhysicsPointQueryParameters3D.set_exclude(exclude) end

---@return Array<RID>
function PhysicsPointQueryParameters3D.get_exclude() end

---@param enable boolean
function PhysicsPointQueryParameters3D.set_collide_with_bodies(enable) end

---@return boolean
function PhysicsPointQueryParameters3D.is_collide_with_bodies_enabled() end

---@param enable boolean
function PhysicsPointQueryParameters3D.set_collide_with_areas(enable) end

---@return boolean
function PhysicsPointQueryParameters3D.is_collide_with_areas_enabled() end
