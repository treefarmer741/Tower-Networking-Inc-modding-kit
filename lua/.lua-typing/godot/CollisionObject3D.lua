---@meta _
-- Generated API for game version 0.9.1

---@class CollisionObject3D : Node3D
---@field disable_mode integer
---@field collision_layer integer
---@field collision_mask integer
---@field collision_priority number
---@field input_ray_pickable boolean
---@field input_capture_on_drag boolean
local CollisionObject3D = {}

---@param layer integer
function CollisionObject3D.set_collision_layer(layer) end

---@return integer
function CollisionObject3D.get_collision_layer() end

---@param mask integer
function CollisionObject3D.set_collision_mask(mask) end

---@return integer
function CollisionObject3D.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function CollisionObject3D.set_collision_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function CollisionObject3D.get_collision_layer_value(layer_number) end

---@param layer_number integer
---@param value boolean
function CollisionObject3D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function CollisionObject3D.get_collision_mask_value(layer_number) end

---@param priority number
function CollisionObject3D.set_collision_priority(priority) end

---@return number
function CollisionObject3D.get_collision_priority() end

---@param mode CollisionObject3D.DisableMode
function CollisionObject3D.set_disable_mode(mode) end

---@return CollisionObject3D.DisableMode
function CollisionObject3D.get_disable_mode() end

---@param ray_pickable boolean
function CollisionObject3D.set_ray_pickable(ray_pickable) end

---@return boolean
function CollisionObject3D.is_ray_pickable() end

---@param enable boolean
function CollisionObject3D.set_capture_input_on_drag(enable) end

---@return boolean
function CollisionObject3D.get_capture_input_on_drag() end

---@return RID
function CollisionObject3D.get_rid() end

---@param owner Object
---@return integer
function CollisionObject3D.create_shape_owner(owner) end

---@param owner_id integer
function CollisionObject3D.remove_shape_owner(owner_id) end

---@return PackedInt32Array
function CollisionObject3D.get_shape_owners() end

---@param owner_id integer
---@param transform Transform3D
function CollisionObject3D.shape_owner_set_transform(owner_id, transform) end

---@param owner_id integer
---@return Transform3D
function CollisionObject3D.shape_owner_get_transform(owner_id) end

---@param owner_id integer
---@return Object
function CollisionObject3D.shape_owner_get_owner(owner_id) end

---@param owner_id integer
---@param disabled boolean
function CollisionObject3D.shape_owner_set_disabled(owner_id, disabled) end

---@param owner_id integer
---@return boolean
function CollisionObject3D.is_shape_owner_disabled(owner_id) end

---@param owner_id integer
---@param shape Shape3D
function CollisionObject3D.shape_owner_add_shape(owner_id, shape) end

---@param owner_id integer
---@return integer
function CollisionObject3D.shape_owner_get_shape_count(owner_id) end

---@param owner_id integer
---@param shape_id integer
---@return Shape3D
function CollisionObject3D.shape_owner_get_shape(owner_id, shape_id) end

---@param owner_id integer
---@param shape_id integer
---@return integer
function CollisionObject3D.shape_owner_get_shape_index(owner_id, shape_id) end

---@param owner_id integer
---@param shape_id integer
function CollisionObject3D.shape_owner_remove_shape(owner_id, shape_id) end

---@param owner_id integer
function CollisionObject3D.shape_owner_clear_shapes(owner_id) end

---@param shape_index integer
---@return integer
function CollisionObject3D.shape_find_owner(shape_index) end
