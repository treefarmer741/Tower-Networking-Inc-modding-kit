---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsBody3D : CollisionObject3D
---@field axis_lock_linear_x boolean
---@field axis_lock_linear_y boolean
---@field axis_lock_linear_z boolean
---@field axis_lock_angular_x boolean
---@field axis_lock_angular_y boolean
---@field axis_lock_angular_z boolean
local PhysicsBody3D = {}

---@param motion Vector3
---@param test_only boolean?  # Default = false
---@param safe_margin number?  # Default = 0.001
---@param recovery_as_collision boolean?  # Default = false
---@param max_collisions integer?  # Default = 1
---@return KinematicCollision3D
function PhysicsBody3D.move_and_collide(motion, test_only, safe_margin, recovery_as_collision, max_collisions) end

---@param from Transform3D
---@param motion Vector3
---@param collision KinematicCollision3D?  # Default = <null>
---@param safe_margin number?  # Default = 0.001
---@param recovery_as_collision boolean?  # Default = false
---@param max_collisions integer?  # Default = 1
---@return boolean
function PhysicsBody3D.test_move(from, motion, collision, safe_margin, recovery_as_collision, max_collisions) end

---@return Vector3
function PhysicsBody3D.get_gravity() end

---@param axis PhysicsServer3D.BodyAxis
---@param lock boolean
function PhysicsBody3D.set_axis_lock(axis, lock) end

---@param axis PhysicsServer3D.BodyAxis
---@return boolean
function PhysicsBody3D.get_axis_lock(axis) end

---@return Array<PhysicsBody3D>
function PhysicsBody3D.get_collision_exceptions() end

---@param body Node
function PhysicsBody3D.add_collision_exception_with(body) end

---@param body Node
function PhysicsBody3D.remove_collision_exception_with(body) end
