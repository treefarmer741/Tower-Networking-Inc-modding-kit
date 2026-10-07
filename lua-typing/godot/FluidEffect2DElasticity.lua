---@meta _
-- Generated API for game version 0.10.0

---@class FluidEffect2DElasticity : Resource
---@field young_modulus number
---@field poisson_ratio number
---@field nonlinear_strain boolean
local FluidEffect2DElasticity = {}

---@return number
function FluidEffect2DElasticity.get_young_modulus() end

---@param young_modulus number
function FluidEffect2DElasticity.set_young_modulus(young_modulus) end

---@return number
function FluidEffect2DElasticity.get_poisson_ratio() end

---@param poisson_ratio number
function FluidEffect2DElasticity.set_poisson_ratio(poisson_ratio) end

---@return boolean
function FluidEffect2DElasticity.get_nonlinear_strain() end

---@param nonlinear_strain boolean
function FluidEffect2DElasticity.set_nonlinear_strain(nonlinear_strain) end
