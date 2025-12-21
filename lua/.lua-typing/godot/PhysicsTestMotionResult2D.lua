---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsTestMotionResult2D : RefCounted
local PhysicsTestMotionResult2D = {}

---@return Vector2
function PhysicsTestMotionResult2D.get_travel() end

---@return Vector2
function PhysicsTestMotionResult2D.get_remainder() end

---@return Vector2
function PhysicsTestMotionResult2D.get_collision_point() end

---@return Vector2
function PhysicsTestMotionResult2D.get_collision_normal() end

---@return Vector2
function PhysicsTestMotionResult2D.get_collider_velocity() end

---@return integer
function PhysicsTestMotionResult2D.get_collider_id() end

---@return RID
function PhysicsTestMotionResult2D.get_collider_rid() end

---@return Object
function PhysicsTestMotionResult2D.get_collider() end

---@return integer
function PhysicsTestMotionResult2D.get_collider_shape() end

---@return integer
function PhysicsTestMotionResult2D.get_collision_local_shape() end

---@return number
function PhysicsTestMotionResult2D.get_collision_depth() end

---@return number
function PhysicsTestMotionResult2D.get_collision_safe_fraction() end

---@return number
function PhysicsTestMotionResult2D.get_collision_unsafe_fraction() end
