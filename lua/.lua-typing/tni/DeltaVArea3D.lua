---@meta _
-- Generated API for game version 0.10.0

---@class DeltaVArea3D : Area3D
---@field rigids_under_influence Array<RigidBody3D>
local DeltaVArea3D = {}

---@param body RigidBody3D
---@param time_delta number
function DeltaVArea3D.affect_rigid_body(body, time_delta) end
