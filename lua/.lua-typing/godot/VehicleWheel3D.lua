---@meta _
-- Generated API for game version 0.9.1

---@class VehicleWheel3D : Node3D
---@field engine_force number
---@field brake number
---@field steering number
---@field use_as_traction boolean
---@field use_as_steering boolean
---@field wheel_roll_influence number
---@field wheel_radius number
---@field wheel_rest_length number
---@field wheel_friction_slip number
---@field suspension_travel number
---@field suspension_stiffness number
---@field suspension_max_force number
---@field damping_compression number
---@field damping_relaxation number
local VehicleWheel3D = {}

---@param length number
function VehicleWheel3D.set_radius(length) end

---@return number
function VehicleWheel3D.get_radius() end

---@param length number
function VehicleWheel3D.set_suspension_rest_length(length) end

---@return number
function VehicleWheel3D.get_suspension_rest_length() end

---@param length number
function VehicleWheel3D.set_suspension_travel(length) end

---@return number
function VehicleWheel3D.get_suspension_travel() end

---@param length number
function VehicleWheel3D.set_suspension_stiffness(length) end

---@return number
function VehicleWheel3D.get_suspension_stiffness() end

---@param length number
function VehicleWheel3D.set_suspension_max_force(length) end

---@return number
function VehicleWheel3D.get_suspension_max_force() end

---@param length number
function VehicleWheel3D.set_damping_compression(length) end

---@return number
function VehicleWheel3D.get_damping_compression() end

---@param length number
function VehicleWheel3D.set_damping_relaxation(length) end

---@return number
function VehicleWheel3D.get_damping_relaxation() end

---@param enable boolean
function VehicleWheel3D.set_use_as_traction(enable) end

---@return boolean
function VehicleWheel3D.is_used_as_traction() end

---@param enable boolean
function VehicleWheel3D.set_use_as_steering(enable) end

---@return boolean
function VehicleWheel3D.is_used_as_steering() end

---@param length number
function VehicleWheel3D.set_friction_slip(length) end

---@return number
function VehicleWheel3D.get_friction_slip() end

---@return boolean
function VehicleWheel3D.is_in_contact() end

---@return Node3D
function VehicleWheel3D.get_contact_body() end

---@return Vector3
function VehicleWheel3D.get_contact_point() end

---@return Vector3
function VehicleWheel3D.get_contact_normal() end

---@param roll_influence number
function VehicleWheel3D.set_roll_influence(roll_influence) end

---@return number
function VehicleWheel3D.get_roll_influence() end

---@return number
function VehicleWheel3D.get_skidinfo() end

---@return number
function VehicleWheel3D.get_rpm() end

---@param engine_force number
function VehicleWheel3D.set_engine_force(engine_force) end

---@return number
function VehicleWheel3D.get_engine_force() end

---@param brake number
function VehicleWheel3D.set_brake(brake) end

---@return number
function VehicleWheel3D.get_brake() end

---@param steering number
function VehicleWheel3D.set_steering(steering) end

---@return number
function VehicleWheel3D.get_steering() end
