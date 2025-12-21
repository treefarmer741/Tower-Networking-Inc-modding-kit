---@meta _
-- Generated API for game version 0.9.1

---@class Node2D : CanvasItem
---@field position Vector2
---@field rotation number
---@field rotation_degrees number
---@field scale Vector2
---@field skew number
---@field transform Transform2D
---@field global_position Vector2
---@field global_rotation number
---@field global_rotation_degrees number
---@field global_scale Vector2
---@field global_skew number
---@field global_transform Transform2D
local Node2D = {}

---@param position Vector2
function Node2D.set_position(position) end

---@param radians number
function Node2D.set_rotation(radians) end

---@param degrees number
function Node2D.set_rotation_degrees(degrees) end

---@param radians number
function Node2D.set_skew(radians) end

---@param scale Vector2
function Node2D.set_scale(scale) end

---@return Vector2
function Node2D.get_position() end

---@return number
function Node2D.get_rotation() end

---@return number
function Node2D.get_rotation_degrees() end

---@return number
function Node2D.get_skew() end

---@return Vector2
function Node2D.get_scale() end

---@param radians number
function Node2D.rotate(radians) end

---@param delta number
---@param scaled boolean?  # Default = false
function Node2D.move_local_x(delta, scaled) end

---@param delta number
---@param scaled boolean?  # Default = false
function Node2D.move_local_y(delta, scaled) end

---@param offset Vector2
function Node2D.translate(offset) end

---@param offset Vector2
function Node2D.global_translate(offset) end

---@param ratio Vector2
function Node2D.apply_scale(ratio) end

---@param position Vector2
function Node2D.set_global_position(position) end

---@return Vector2
function Node2D.get_global_position() end

---@param radians number
function Node2D.set_global_rotation(radians) end

---@param degrees number
function Node2D.set_global_rotation_degrees(degrees) end

---@return number
function Node2D.get_global_rotation() end

---@return number
function Node2D.get_global_rotation_degrees() end

---@param radians number
function Node2D.set_global_skew(radians) end

---@return number
function Node2D.get_global_skew() end

---@param scale Vector2
function Node2D.set_global_scale(scale) end

---@return Vector2
function Node2D.get_global_scale() end

---@param xform Transform2D
function Node2D.set_transform(xform) end

---@param xform Transform2D
function Node2D.set_global_transform(xform) end

---@param point Vector2
function Node2D.look_at(point) end

---@param point Vector2
---@return number
function Node2D.get_angle_to(point) end

---@param global_point Vector2
---@return Vector2
function Node2D.to_local(global_point) end

---@param local_point Vector2
---@return Vector2
function Node2D.to_global(local_point) end

---@param parent Node
---@return Transform2D
function Node2D.get_relative_transform_to_parent(parent) end
