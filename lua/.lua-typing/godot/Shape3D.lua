---@meta _
-- Generated API for game version 0.9.1

---@class Shape3D : Resource
---@field custom_solver_bias number
---@field margin number
local Shape3D = {}

---@param bias number
function Shape3D.set_custom_solver_bias(bias) end

---@return number
function Shape3D.get_custom_solver_bias() end

---@param margin number
function Shape3D.set_margin(margin) end

---@return number
function Shape3D.get_margin() end

---@return ArrayMesh
function Shape3D.get_debug_mesh() end
