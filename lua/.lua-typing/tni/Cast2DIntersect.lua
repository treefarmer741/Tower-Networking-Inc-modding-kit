---@meta _
-- Generated API for game version 0.10.0

---@class Cast2DIntersect : Object
local Cast2DIntersect = {}

---@param intsx Object
---@param sort_z_index Object?  # Default = false
---@return Object
function Cast2DIntersect.get_colliders_only(intsx, sort_z_index) end

---@param node Node2D
---@param mask Object?  # Default = 4294967295
---@param max_detect Object?  # Default = 32
---@param sort_z_index Object?  # Default = true
---@return Object
function Cast2DIntersect.pointcast(node, mask, max_detect, sort_z_index) end

---@param space_state PhysicsDirectSpaceState2D
---@param point Vector2
---@param mask Object?  # Default = 4294967295
---@param max_detect Object?  # Default = 32
---@param sort_z_index Object?  # Default = true
---@return Object
function Cast2DIntersect.pointcast_detached(space_state, point, mask, max_detect, sort_z_index) end

---@param node CollisionObject2D
---@param max_detect Object?  # Default = 32
---@param sort_z_index Object?  # Default = true
---@param mask_override integer?  # Default = -1
---@return Object
function Cast2DIntersect.shapecast(node, max_detect, sort_z_index, mask_override) end

---@param space_state PhysicsDirectSpaceState2D
---@param detached_node CollisionObject2D
---@param base_transform Transform2D
---@param excludes Array<RID>
---@param max_detect Object?  # Default = 32
---@param sort_z_index Object?  # Default = true
---@param mask_override integer?  # Default = -1
---@return Object
function Cast2DIntersect.multishapecast_detached(space_state, detached_node, base_transform, excludes, max_detect, sort_z_index, mask_override) end

---@param space_state PhysicsDirectSpaceState2D
---@param shape Shape2D
---@param transform Transform2D
---@param excludes Array<RID>
---@param mask Object?  # Default = 4294967295
---@param max_detect Object?  # Default = 32
---@param sort_z_index Object?  # Default = true
---@return Object
function Cast2DIntersect.shapecast_detached(space_state, shape, transform, excludes, mask, max_detect, sort_z_index) end

---@param a Object
---@param b Object
---@return boolean
function Cast2DIntersect.greater_pick_priority(a, b) end

---@param obj Object
---@return integer
function Cast2DIntersect.get_type_priority(obj) end
