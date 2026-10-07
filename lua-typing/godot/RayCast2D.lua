---@meta _
-- Generated API for game version 0.10.0

---@class RayCast2D : Node2D
---@field enabled boolean
---@field exclude_parent boolean
---@field target_position Vector2
---@field collision_mask integer
---@field hit_from_inside boolean
---@field collide_with_areas boolean
---@field collide_with_bodies boolean
local RayCast2D = {}

---@param enabled boolean
function RayCast2D.set_enabled(enabled) end

---@return boolean
function RayCast2D.is_enabled() end

---@param local_point Vector2
function RayCast2D.set_target_position(local_point) end

---@return Vector2
function RayCast2D.get_target_position() end

---@return boolean
function RayCast2D.is_colliding() end

function RayCast2D.force_raycast_update() end

---@return Object
function RayCast2D.get_collider() end

---@return RID
function RayCast2D.get_collider_rid() end

---@return integer
function RayCast2D.get_collider_shape() end

---@return Vector2
function RayCast2D.get_collision_point() end

---@return Vector2
function RayCast2D.get_collision_normal() end

---@param rid RID
function RayCast2D.add_exception_rid(rid) end

---@param node CollisionObject2D
function RayCast2D.add_exception(node) end

---@param rid RID
function RayCast2D.remove_exception_rid(rid) end

---@param node CollisionObject2D
function RayCast2D.remove_exception(node) end

function RayCast2D.clear_exceptions() end

---@param mask integer
function RayCast2D.set_collision_mask(mask) end

---@return integer
function RayCast2D.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function RayCast2D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function RayCast2D.get_collision_mask_value(layer_number) end

---@param mask boolean
function RayCast2D.set_exclude_parent_body(mask) end

---@return boolean
function RayCast2D.get_exclude_parent_body() end

---@param enable boolean
function RayCast2D.set_collide_with_areas(enable) end

---@return boolean
function RayCast2D.is_collide_with_areas_enabled() end

---@param enable boolean
function RayCast2D.set_collide_with_bodies(enable) end

---@return boolean
function RayCast2D.is_collide_with_bodies_enabled() end

---@param enable boolean
function RayCast2D.set_hit_from_inside(enable) end

---@return boolean
function RayCast2D.is_hit_from_inside_enabled() end
