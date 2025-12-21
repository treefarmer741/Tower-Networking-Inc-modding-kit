---@meta _
-- Generated API for game version 0.9.1

---@class SeparationRayShape3D : Shape3D
---@field length number
---@field slide_on_slope boolean
local SeparationRayShape3D = {}

---@param length number
function SeparationRayShape3D.set_length(length) end

---@return number
function SeparationRayShape3D.get_length() end

---@param active boolean
function SeparationRayShape3D.set_slide_on_slope(active) end

---@return boolean
function SeparationRayShape3D.get_slide_on_slope() end
