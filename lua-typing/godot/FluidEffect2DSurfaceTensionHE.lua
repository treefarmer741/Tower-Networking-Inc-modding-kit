---@meta _
-- Generated API for game version 0.10.0

---@class FluidEffect2DSurfaceTensionHE : Resource
---@field fluid_tension_coefficient number
---@field boundary_adhesion_coefficient number
local FluidEffect2DSurfaceTensionHE = {}

---@return number
function FluidEffect2DSurfaceTensionHE.get_fluid_tension_coefficient() end

---@param fluid_tension_coefficient number
function FluidEffect2DSurfaceTensionHE.set_fluid_tension_coefficient(fluid_tension_coefficient) end

---@return number
function FluidEffect2DSurfaceTensionHE.get_boundary_adhesion_coefficient() end

---@param boundary_adhesion_coefficient number
function FluidEffect2DSurfaceTensionHE.set_boundary_adhesion_coefficient(boundary_adhesion_coefficient) end
