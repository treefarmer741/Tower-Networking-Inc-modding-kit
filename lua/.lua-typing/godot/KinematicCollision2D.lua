---@meta _
-- Generated API for game version 0.9.1

---@class KinematicCollision2D : RefCounted
local KinematicCollision2D = {}

---@return Vector2
function KinematicCollision2D.get_position() end

---@return Vector2
function KinematicCollision2D.get_normal() end

---@return Vector2
function KinematicCollision2D.get_travel() end

---@return Vector2
function KinematicCollision2D.get_remainder() end

---@param up_direction Vector2?  # Default = (0.0, -1.0)
---@return number
function KinematicCollision2D.get_angle(up_direction) end

---@return number
function KinematicCollision2D.get_depth() end

---@return Object
function KinematicCollision2D.get_local_shape() end

---@return Object
function KinematicCollision2D.get_collider() end

---@return integer
function KinematicCollision2D.get_collider_id() end

---@return RID
function KinematicCollision2D.get_collider_rid() end

---@return Object
function KinematicCollision2D.get_collider_shape() end

---@return integer
function KinematicCollision2D.get_collider_shape_index() end

---@return Vector2
function KinematicCollision2D.get_collider_velocity() end
