---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsTestMotionResult3D : RefCounted
local PhysicsTestMotionResult3D = {}

---@return Vector3
function PhysicsTestMotionResult3D.get_travel() end

---@return Vector3
function PhysicsTestMotionResult3D.get_remainder() end

---@return number
function PhysicsTestMotionResult3D.get_collision_safe_fraction() end

---@return number
function PhysicsTestMotionResult3D.get_collision_unsafe_fraction() end

---@return integer
function PhysicsTestMotionResult3D.get_collision_count() end

---@param collision_index integer?  # Default = 0
---@return Vector3
function PhysicsTestMotionResult3D.get_collision_point(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Vector3
function PhysicsTestMotionResult3D.get_collision_normal(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Vector3
function PhysicsTestMotionResult3D.get_collider_velocity(collision_index) end

---@param collision_index integer?  # Default = 0
---@return integer
function PhysicsTestMotionResult3D.get_collider_id(collision_index) end

---@param collision_index integer?  # Default = 0
---@return RID
function PhysicsTestMotionResult3D.get_collider_rid(collision_index) end

---@param collision_index integer?  # Default = 0
---@return Object
function PhysicsTestMotionResult3D.get_collider(collision_index) end

---@param collision_index integer?  # Default = 0
---@return integer
function PhysicsTestMotionResult3D.get_collider_shape(collision_index) end

---@param collision_index integer?  # Default = 0
---@return integer
function PhysicsTestMotionResult3D.get_collision_local_shape(collision_index) end

---@param collision_index integer?  # Default = 0
---@return number
function PhysicsTestMotionResult3D.get_collision_depth(collision_index) end
