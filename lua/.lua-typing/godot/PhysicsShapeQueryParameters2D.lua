---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsShapeQueryParameters2D : RefCounted
---@field collision_mask integer
---@field exclude Array<RID>
---@field margin number
---@field motion Vector2
---@field shape Shape2D
---@field shape_rid RID
---@field transform Transform2D
---@field collide_with_bodies boolean
---@field collide_with_areas boolean
local PhysicsShapeQueryParameters2D = {}

---@param shape Resource
function PhysicsShapeQueryParameters2D.set_shape(shape) end

---@return Resource
function PhysicsShapeQueryParameters2D.get_shape() end

---@param shape RID
function PhysicsShapeQueryParameters2D.set_shape_rid(shape) end

---@return RID
function PhysicsShapeQueryParameters2D.get_shape_rid() end

---@param transform Transform2D
function PhysicsShapeQueryParameters2D.set_transform(transform) end

---@return Transform2D
function PhysicsShapeQueryParameters2D.get_transform() end

---@param motion Vector2
function PhysicsShapeQueryParameters2D.set_motion(motion) end

---@return Vector2
function PhysicsShapeQueryParameters2D.get_motion() end

---@param margin number
function PhysicsShapeQueryParameters2D.set_margin(margin) end

---@return number
function PhysicsShapeQueryParameters2D.get_margin() end

---@param collision_mask integer
function PhysicsShapeQueryParameters2D.set_collision_mask(collision_mask) end

---@return integer
function PhysicsShapeQueryParameters2D.get_collision_mask() end

---@param exclude Array<RID>
function PhysicsShapeQueryParameters2D.set_exclude(exclude) end

---@return Array<RID>
function PhysicsShapeQueryParameters2D.get_exclude() end

---@param enable boolean
function PhysicsShapeQueryParameters2D.set_collide_with_bodies(enable) end

---@return boolean
function PhysicsShapeQueryParameters2D.is_collide_with_bodies_enabled() end

---@param enable boolean
function PhysicsShapeQueryParameters2D.set_collide_with_areas(enable) end

---@return boolean
function PhysicsShapeQueryParameters2D.is_collide_with_areas_enabled() end
