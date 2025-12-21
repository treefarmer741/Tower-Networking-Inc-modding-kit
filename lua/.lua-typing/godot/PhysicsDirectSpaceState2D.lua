---@meta _
-- Generated API for game version 0.9.1

---@class PhysicsDirectSpaceState2D : Object
local PhysicsDirectSpaceState2D = {}

---@param parameters PhysicsPointQueryParameters2D
---@param max_results integer?  # Default = 32
---@return Array<Dictionary>
function PhysicsDirectSpaceState2D.intersect_point(parameters, max_results) end

---@param parameters PhysicsRayQueryParameters2D
---@return table<any,any>
function PhysicsDirectSpaceState2D.intersect_ray(parameters) end

---@param parameters PhysicsShapeQueryParameters2D
---@param max_results integer?  # Default = 32
---@return Array<Dictionary>
function PhysicsDirectSpaceState2D.intersect_shape(parameters, max_results) end

---@param parameters PhysicsShapeQueryParameters2D
---@return PackedFloat32Array
function PhysicsDirectSpaceState2D.cast_motion(parameters) end

---@param parameters PhysicsShapeQueryParameters2D
---@param max_results integer?  # Default = 32
---@return Array<Vector2>
function PhysicsDirectSpaceState2D.collide_shape(parameters, max_results) end

---@param parameters PhysicsShapeQueryParameters2D
---@return table<any,any>
function PhysicsDirectSpaceState2D.get_rest_info(parameters) end
