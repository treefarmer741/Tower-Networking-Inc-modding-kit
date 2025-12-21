---@meta _
-- Generated API for game version 0.9.1

---@class ShapeCast2D : Node2D
---@field enabled boolean
---@field shape Shape2D
---@field exclude_parent boolean
---@field target_position Vector2
---@field margin number
---@field max_results integer
---@field collision_mask integer
---@field collision_result Array<any>
---@field collide_with_areas boolean
---@field collide_with_bodies boolean
local ShapeCast2D = {}

---@param enabled boolean
function ShapeCast2D.set_enabled(enabled) end

---@return boolean
function ShapeCast2D.is_enabled() end

---@param shape Shape2D
function ShapeCast2D.set_shape(shape) end

---@return Shape2D
function ShapeCast2D.get_shape() end

---@param local_point Vector2
function ShapeCast2D.set_target_position(local_point) end

---@return Vector2
function ShapeCast2D.get_target_position() end

---@param margin number
function ShapeCast2D.set_margin(margin) end

---@return number
function ShapeCast2D.get_margin() end

---@param max_results integer
function ShapeCast2D.set_max_results(max_results) end

---@return integer
function ShapeCast2D.get_max_results() end

---@return boolean
function ShapeCast2D.is_colliding() end

---@return integer
function ShapeCast2D.get_collision_count() end

function ShapeCast2D.force_shapecast_update() end

---@param index integer
---@return Object
function ShapeCast2D.get_collider(index) end

---@param index integer
---@return RID
function ShapeCast2D.get_collider_rid(index) end

---@param index integer
---@return integer
function ShapeCast2D.get_collider_shape(index) end

---@param index integer
---@return Vector2
function ShapeCast2D.get_collision_point(index) end

---@param index integer
---@return Vector2
function ShapeCast2D.get_collision_normal(index) end

---@return number
function ShapeCast2D.get_closest_collision_safe_fraction() end

---@return number
function ShapeCast2D.get_closest_collision_unsafe_fraction() end

---@param rid RID
function ShapeCast2D.add_exception_rid(rid) end

---@param node CollisionObject2D
function ShapeCast2D.add_exception(node) end

---@param rid RID
function ShapeCast2D.remove_exception_rid(rid) end

---@param node CollisionObject2D
function ShapeCast2D.remove_exception(node) end

function ShapeCast2D.clear_exceptions() end

---@param mask integer
function ShapeCast2D.set_collision_mask(mask) end

---@return integer
function ShapeCast2D.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function ShapeCast2D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function ShapeCast2D.get_collision_mask_value(layer_number) end

---@param mask boolean
function ShapeCast2D.set_exclude_parent_body(mask) end

---@return boolean
function ShapeCast2D.get_exclude_parent_body() end

---@param enable boolean
function ShapeCast2D.set_collide_with_areas(enable) end

---@return boolean
function ShapeCast2D.is_collide_with_areas_enabled() end

---@param enable boolean
function ShapeCast2D.set_collide_with_bodies(enable) end

---@return boolean
function ShapeCast2D.is_collide_with_bodies_enabled() end

---@return Array<any>
function ShapeCast2D.get_collision_result() end
