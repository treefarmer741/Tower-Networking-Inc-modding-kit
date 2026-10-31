---@meta _
-- Generated API for game version 0.10.0

---@class Shape2D : Resource
---@field custom_solver_bias number
local Shape2D = {}

---@param bias number
function Shape2D.set_custom_solver_bias(bias) end

---@return number
function Shape2D.get_custom_solver_bias() end

---@param local_xform Transform2D
---@param with_shape Shape2D
---@param shape_xform Transform2D
---@return boolean
function Shape2D.collide(local_xform, with_shape, shape_xform) end

---@param local_xform Transform2D
---@param local_motion Vector2
---@param with_shape Shape2D
---@param shape_xform Transform2D
---@param shape_motion Vector2
---@return boolean
function Shape2D.collide_with_motion(local_xform, local_motion, with_shape, shape_xform, shape_motion) end

---@param local_xform Transform2D
---@param with_shape Shape2D
---@param shape_xform Transform2D
---@return PackedVector2Array
function Shape2D.collide_and_get_contacts(local_xform, with_shape, shape_xform) end

---@param local_xform Transform2D
---@param local_motion Vector2
---@param with_shape Shape2D
---@param shape_xform Transform2D
---@param shape_motion Vector2
---@return PackedVector2Array
function Shape2D.collide_with_motion_and_get_contacts(local_xform, local_motion, with_shape, shape_xform, shape_motion) end

---@param canvas_item RID
---@param color Color
function Shape2D.draw(canvas_item, color) end

---@return Rect2
function Shape2D.get_rect() end
