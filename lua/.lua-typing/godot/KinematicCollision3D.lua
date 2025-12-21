---@meta _
-- Generated API for game version 0.9.1

---@class KinematicCollision3D : RefCounted
local KinematicCollision3D = {}

---@return Vector3
function KinematicCollision3D.get_travel() end

---@return Vector3
function KinematicCollision3D.get_remainder() end

---@return number
function KinematicCollision3D.get_depth() end

---@return integer
function KinematicCollision3D.get_collision_count() end

---@param collision_index integer?  # Default = 0
---@return Vector3
function KinematicCollision3D.get_position(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Vector3
function KinematicCollision3D.get_normal(collision_index) end

---@param collision_index integer?  # Default = 0
---@param up_direction Vector3?  # Default = (0.0, 1.0, 0.0)
---@return number
function KinematicCollision3D.get_angle(collision_index, up_direction) end

---@param collision_index integer?  # Default = 0
---@return Object
function KinematicCollision3D.get_local_shape(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Object
function KinematicCollision3D.get_collider(collision_index) end

---@param collision_index integer?  # Default = 0
---@return integer
function KinematicCollision3D.get_collider_id(collision_index) end

---@param collision_index integer?  # Default = 0
---@return RID
function KinematicCollision3D.get_collider_rid(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Object
function KinematicCollision3D.get_collider_shape(collision_index) end

---@param collision_index integer?  # Default = 0
---@return integer
function KinematicCollision3D.get_collider_shape_index(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Vector3
function KinematicCollision3D.get_collider_velocity(collision_index) end
