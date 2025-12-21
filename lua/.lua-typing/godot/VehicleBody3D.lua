---@meta _
-- Generated API for game version 0.9.1

---@class VehicleBody3D : RigidBody3D
---@field engine_force number
---@field brake number
---@field steering number
local VehicleBody3D = {}

---@param engine_force number
function VehicleBody3D.set_engine_force(engine_force) end

---@return number
function VehicleBody3D.get_engine_force() end

---@param brake number
function VehicleBody3D.set_brake(brake) end

---@return number
function VehicleBody3D.get_brake() end

---@param steering number
function VehicleBody3D.set_steering(steering) end

---@return number
function VehicleBody3D.get_steering() end
