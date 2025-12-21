---@meta _
-- Generated API for game version 0.9.1

---@class FluidEffect2DSurfaceTensionAKINCI : Resource
---@field fluid_tension_coefficient number
---@field boundary_adhesion_coefficient number
local FluidEffect2DSurfaceTensionAKINCI = {}

---@return number
function FluidEffect2DSurfaceTensionAKINCI.get_fluid_tension_coefficient() end

---@param fluid_tension_coefficient number
function FluidEffect2DSurfaceTensionAKINCI.set_fluid_tension_coefficient(fluid_tension_coefficient) end

---@return number
function FluidEffect2DSurfaceTensionAKINCI.get_boundary_adhesion_coefficient() end

---@param boundary_adhesion_coefficient number
function FluidEffect2DSurfaceTensionAKINCI.set_boundary_adhesion_coefficient(boundary_adhesion_coefficient) end
