---@meta _
-- Generated API for game version 0.9.1

---@class LinearDragSphereArea3D : Area3D
---@field drag_coefficient number
---@field velocity_exponent number
---@field falloff Curve
---@field sphere_radius number
---@field rigids_under_influence Array<RigidBody3D>
local LinearDragSphereArea3D = {}

---@param body RigidBody3D
---@param _time_delta number
function LinearDragSphereArea3D.affect_rigid_body(body, _time_delta) end

---@param body RigidBody3D
---@param time_delta number
function LinearDragSphereArea3D.affect_rigid_body(body, time_delta) end
