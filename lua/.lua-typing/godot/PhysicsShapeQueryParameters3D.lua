---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsShapeQueryParameters3D : RefCounted
---@field collision_mask integer
---@field exclude Array<RID>
---@field margin number
---@field motion Vector3
---@field shape Shape3D
---@field shape_rid RID
---@field transform Transform3D
---@field collide_with_bodies boolean
---@field collide_with_areas boolean
local PhysicsShapeQueryParameters3D = {}

---@param shape Resource
function PhysicsShapeQueryParameters3D.set_shape(shape) end

---@return Resource
function PhysicsShapeQueryParameters3D.get_shape() end

---@param shape RID
function PhysicsShapeQueryParameters3D.set_shape_rid(shape) end

---@return RID
function PhysicsShapeQueryParameters3D.get_shape_rid() end

---@param transform Transform3D
function PhysicsShapeQueryParameters3D.set_transform(transform) end

---@return Transform3D
function PhysicsShapeQueryParameters3D.get_transform() end

---@param motion Vector3
function PhysicsShapeQueryParameters3D.set_motion(motion) end

---@return Vector3
function PhysicsShapeQueryParameters3D.get_motion() end

---@param margin number
function PhysicsShapeQueryParameters3D.set_margin(margin) end

---@return number
function PhysicsShapeQueryParameters3D.get_margin() end

---@param collision_mask integer
function PhysicsShapeQueryParameters3D.set_collision_mask(collision_mask) end

---@return integer
function PhysicsShapeQueryParameters3D.get_collision_mask() end

---@param exclude Array<RID>
function PhysicsShapeQueryParameters3D.set_exclude(exclude) end

---@return Array<RID>
function PhysicsShapeQueryParameters3D.get_exclude() end

---@param enable boolean
function PhysicsShapeQueryParameters3D.set_collide_with_bodies(enable) end

---@return boolean
function PhysicsShapeQueryParameters3D.is_collide_with_bodies_enabled() end

---@param enable boolean
function PhysicsShapeQueryParameters3D.set_collide_with_areas(enable) end

---@return boolean
function PhysicsShapeQueryParameters3D.is_collide_with_areas_enabled() end
