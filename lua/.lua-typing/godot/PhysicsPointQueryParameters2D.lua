---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsPointQueryParameters2D : RefCounted
---@field position Vector2
---@field canvas_instance_id integer
---@field collision_mask integer
---@field exclude Array<RID>
---@field collide_with_bodies boolean
---@field collide_with_areas boolean
local PhysicsPointQueryParameters2D = {}

---@param position Vector2
function PhysicsPointQueryParameters2D.set_position(position) end

---@return Vector2
function PhysicsPointQueryParameters2D.get_position() end

---@param canvas_instance_id integer
function PhysicsPointQueryParameters2D.set_canvas_instance_id(canvas_instance_id) end

---@return integer
function PhysicsPointQueryParameters2D.get_canvas_instance_id() end

---@param collision_mask integer
function PhysicsPointQueryParameters2D.set_collision_mask(collision_mask) end

---@return integer
function PhysicsPointQueryParameters2D.get_collision_mask() end

---@param exclude Array<RID>
function PhysicsPointQueryParameters2D.set_exclude(exclude) end

---@return Array<RID>
function PhysicsPointQueryParameters2D.get_exclude() end

---@param enable boolean
function PhysicsPointQueryParameters2D.set_collide_with_bodies(enable) end

---@return boolean
function PhysicsPointQueryParameters2D.is_collide_with_bodies_enabled() end

---@param enable boolean
function PhysicsPointQueryParameters2D.set_collide_with_areas(enable) end

---@return boolean
function PhysicsPointQueryParameters2D.is_collide_with_areas_enabled() end
