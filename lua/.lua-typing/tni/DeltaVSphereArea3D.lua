---@meta _
-- Generated API for game version 0.9.1

---@class DeltaVSphereArea3D : Area3D
---@field sphere_radius number
---@field rigids_under_influence Array<RigidBody3D>
local DeltaVSphereArea3D = {}

---@param body RigidBody3D
---@param time_delta number
function DeltaVSphereArea3D.affect_rigid_body(body, time_delta) end
