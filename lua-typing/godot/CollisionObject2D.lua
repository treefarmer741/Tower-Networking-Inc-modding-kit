---@meta _
-- Generated API for game version 0.10.0

---@class CollisionObject2D : Node2D
---@field disable_mode integer
---@field collision_layer integer
---@field collision_mask integer
---@field collision_priority number
---@field input_pickable boolean
local CollisionObject2D = {}

---@return RID
function CollisionObject2D.get_rid() end

---@param layer integer
function CollisionObject2D.set_collision_layer(layer) end

---@return integer
function CollisionObject2D.get_collision_layer() end

---@param mask integer
function CollisionObject2D.set_collision_mask(mask) end

---@return integer
function CollisionObject2D.get_collision_mask() end

---@param layer_number integer
---@param value boolean
function CollisionObject2D.set_collision_layer_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function CollisionObject2D.get_collision_layer_value(layer_number) end

---@param layer_number integer
---@param value boolean
function CollisionObject2D.set_collision_mask_value(layer_number, value) end

---@param layer_number integer
---@return boolean
function CollisionObject2D.get_collision_mask_value(layer_number) end

---@param priority number
function CollisionObject2D.set_collision_priority(priority) end

---@return number
function CollisionObject2D.get_collision_priority() end

---@param mode CollisionObject2D.DisableMode
function CollisionObject2D.set_disable_mode(mode) end

---@return CollisionObject2D.DisableMode
function CollisionObject2D.get_disable_mode() end

---@param enabled boolean
function CollisionObject2D.set_pickable(enabled) end

---@return boolean
function CollisionObject2D.is_pickable() end

---@param owner Object
---@return integer
function CollisionObject2D.create_shape_owner(owner) end

---@param owner_id integer
function CollisionObject2D.remove_shape_owner(owner_id) end

---@return PackedInt32Array
function CollisionObject2D.get_shape_owners() end

---@param owner_id integer
---@param transform Transform2D
function CollisionObject2D.shape_owner_set_transform(owner_id, transform) end

---@param owner_id integer
---@return Transform2D
function CollisionObject2D.shape_owner_get_transform(owner_id) end

---@param owner_id integer
---@return Object
function CollisionObject2D.shape_owner_get_owner(owner_id) end

---@param owner_id integer
---@param disabled boolean
function CollisionObject2D.shape_owner_set_disabled(owner_id, disabled) end

---@param owner_id integer
---@return boolean
function CollisionObject2D.is_shape_owner_disabled(owner_id) end

---@param owner_id integer
---@param enable boolean
function CollisionObject2D.shape_owner_set_one_way_collision(owner_id, enable) end

---@param owner_id integer
---@return boolean
function CollisionObject2D.is_shape_owner_one_way_collision_enabled(owner_id) end

---@param owner_id integer
---@param margin number
function CollisionObject2D.shape_owner_set_one_way_collision_margin(owner_id, margin) end

---@param owner_id integer
---@return number
function CollisionObject2D.get_shape_owner_one_way_collision_margin(owner_id) end

---@param owner_id integer
---@param shape Shape2D
function CollisionObject2D.shape_owner_add_shape(owner_id, shape) end

---@param owner_id integer
---@return integer
function CollisionObject2D.shape_owner_get_shape_count(owner_id) end

---@param owner_id integer
---@param shape_id integer
---@return Shape2D
function CollisionObject2D.shape_owner_get_shape(owner_id, shape_id) end

---@param owner_id integer
---@param shape_id integer
---@return integer
function CollisionObject2D.shape_owner_get_shape_index(owner_id, shape_id) end

---@param owner_id integer
---@param shape_id integer
function CollisionObject2D.shape_owner_remove_shape(owner_id, shape_id) end

---@param owner_id integer
function CollisionObject2D.shape_owner_clear_shapes(owner_id) end

---@param shape_index integer
---@return integer
function CollisionObject2D.shape_find_owner(shape_index) end
