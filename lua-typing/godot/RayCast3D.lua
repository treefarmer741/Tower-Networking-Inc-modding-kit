---@meta _
-- Generated API for game version 0.10.0

---@class RayCast3D : Node3D
---@field enabled boolean
---@field exclude_parent boolean
---@field target_position Vector3
---@field collision_mask integer
---@field hit_from_inside boolean
---@field hit_back_faces boolean
---@field collide_with_areas boolean
---@field collide_with_bodies boolean
---@field debug_shape_custom_color Color
---@field debug_shape_thickness integer
local RayCast3D = {}

---@param enabled boolean
function RayCast3D.set_enabled(enabled) end

---@return boolean
function RayCast3D.is_enabled() end

---@param local_point Vector3
function RayCast3D.set_target_position(local_point) end

---@return Vector3
function RayCast3D.get_target_position() end

---@return boolean
function RayCast3D.is_colliding() end

function RayCast3D.force_raycast_update() end

---@return Object
function RayCast3D.get_collider() end

---@return RID
function RayCast3D.get_collider_rid() end

---@return integer
function RayCast3D.get_collider_shape() end

---@return Vector3
function RayCast3D.get_collision_point() end

---@return Vector3
function RayCast3D.get_collision_normal() end

---@return integer
function RayCast3D.get_collision_face_index() end

---@param rid RID
function RayCast3D.add_exception_rid(rid) end

---@param node CollisionObject3D
function RayCast3D.add_exception(node) end

---@param rid RID
function RayCast3D.remove_exception_rid(rid) end

---@param node CollisionObject3D
function RayCast3D.remove_exception(node) end

function RayCast3D.clear_exceptions() end

---@param mask integer
function RayCast3D.set_collision_mask(mask) end

---@return integer
function RayCast3D.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function RayCast3D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function RayCast3D.get_collision_mask_value(layer_number) end

---@param mask boolean
function RayCast3D.set_exclude_parent_body(mask) end

---@return boolean
function RayCast3D.get_exclude_parent_body() end

---@param enable boolean
function RayCast3D.set_collide_with_areas(enable) end

---@return boolean
function RayCast3D.is_collide_with_areas_enabled() end

---@param enable boolean
function RayCast3D.set_collide_with_bodies(enable) end

---@return boolean
function RayCast3D.is_collide_with_bodies_enabled() end

---@param enable boolean
function RayCast3D.set_hit_from_inside(enable) end

---@return boolean
function RayCast3D.is_hit_from_inside_enabled() end

---@param enable boolean
function RayCast3D.set_hit_back_faces(enable) end

---@return boolean
function RayCast3D.is_hit_back_faces_enabled() end

---@param debug_shape_custom_color Color
function RayCast3D.set_debug_shape_custom_color(debug_shape_custom_color) end

---@return Color
function RayCast3D.get_debug_shape_custom_color() end

---@param debug_shape_thickness integer
function RayCast3D.set_debug_shape_thickness(debug_shape_thickness) end

---@return integer
function RayCast3D.get_debug_shape_thickness() end
