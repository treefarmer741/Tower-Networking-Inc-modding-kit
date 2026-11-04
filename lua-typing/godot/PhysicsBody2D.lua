---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsBody2D : CollisionObject2D
local PhysicsBody2D = {}

---@param motion Vector2
---@param test_only boolean?  # Default = false
---@param safe_margin number?  # Default = 0.08
---@param recovery_as_collision boolean?  # Default = false
---@return KinematicCollision2D
function PhysicsBody2D.move_and_collide(motion, test_only, safe_margin, recovery_as_collision) end

---@param from Transform2D
---@param motion Vector2
---@param collision KinematicCollision2D?  # Default = <null>
---@param safe_margin number?  # Default = 0.08
---@param recovery_as_collision boolean?  # Default = false
---@return boolean
function PhysicsBody2D.test_move(from, motion, collision, safe_margin, recovery_as_collision) end

---@return Vector2
function PhysicsBody2D.get_gravity() end

---@return Array<PhysicsBody2D>
function PhysicsBody2D.get_collision_exceptions() end

---@param body Node
function PhysicsBody2D.add_collision_exception_with(body) end

---@param body Node
function PhysicsBody2D.remove_collision_exception_with(body) end
