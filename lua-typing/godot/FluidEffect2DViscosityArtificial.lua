---@meta _
-- Generated API for game version 0.10.0

---@class FluidEffect2DViscosityArtificial : Resource
---@field fluid_viscosity_coefficient number
---@field boundary_adhesion_coefficient number
local FluidEffect2DViscosityArtificial = {}

---@return number
function FluidEffect2DViscosityArtificial.get_fluid_viscosity_coefficient() end

---@param fluid_viscosity_coefficient number
function FluidEffect2DViscosityArtificial.set_fluid_viscosity_coefficient(fluid_viscosity_coefficient) end

---@return number
function FluidEffect2DViscosityArtificial.get_boundary_adhesion_coefficient() end

---@param boundary_adhesion_coefficient number
function FluidEffect2DViscosityArtificial.set_boundary_adhesion_coefficient(boundary_adhesion_coefficient) end
