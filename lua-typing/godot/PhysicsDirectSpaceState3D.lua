---@meta _
-- Generated API for game version 0.10.0

---@class PhysicsDirectSpaceState3D : Object
local PhysicsDirectSpaceState3D = {}

---@param parameters PhysicsPointQueryParameters3D
---@param max_results integer?  # Default = 32
---@return Array<Dictionary>
function PhysicsDirectSpaceState3D.intersect_point(parameters, max_results) end

---@param parameters PhysicsRayQueryParameters3D
---@return table<any,any>
function PhysicsDirectSpaceState3D.intersect_ray(parameters) end

---@param parameters PhysicsShapeQueryParameters3D
---@param max_results integer?  # Default = 32
---@return Array<Dictionary>
function PhysicsDirectSpaceState3D.intersect_shape(parameters, max_results) end

---@param parameters PhysicsShapeQueryParameters3D
---@return PackedFloat32Array
function PhysicsDirectSpaceState3D.cast_motion(parameters) end

---@param parameters PhysicsShapeQueryParameters3D
---@param max_results integer?  # Default = 32
---@return Array<Vector3>
function PhysicsDirectSpaceState3D.collide_shape(parameters, max_results) end

---@param parameters PhysicsShapeQueryParameters3D
---@return table<any,any>
function PhysicsDirectSpaceState3D.get_rest_info(parameters) end
