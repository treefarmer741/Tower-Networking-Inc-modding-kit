---@meta _
-- Generated API for game version 0.10.0

---@class FluidEffect2DSurfaceTensionWCSPH : Resource
---@field fluid_tension_coefficient number
---@field boundary_adhesion_coefficient number
local FluidEffect2DSurfaceTensionWCSPH = {}

---@return number
function FluidEffect2DSurfaceTensionWCSPH.get_fluid_tension_coefficient() end

---@param fluid_tension_coefficient number
function FluidEffect2DSurfaceTensionWCSPH.set_fluid_tension_coefficient(fluid_tension_coefficient) end

---@return number
function FluidEffect2DSurfaceTensionWCSPH.get_boundary_adhesion_coefficient() end

---@param boundary_adhesion_coefficient number
function FluidEffect2DSurfaceTensionWCSPH.set_boundary_adhesion_coefficient(boundary_adhesion_coefficient) end
