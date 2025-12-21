---@meta _
-- Generated API for game version 0.9.1

---@class GPUParticlesAttractor3D : VisualInstance3D
---@field strength number
---@field attenuation number
---@field directionality number
---@field cull_mask integer
local GPUParticlesAttractor3D = {}

---@param mask integer
function GPUParticlesAttractor3D.set_cull_mask(mask) end

---@return integer
function GPUParticlesAttractor3D.get_cull_mask() end

---@param strength number
function GPUParticlesAttractor3D.set_strength(strength) end

---@return number
function GPUParticlesAttractor3D.get_strength() end

---@param attenuation number
function GPUParticlesAttractor3D.set_attenuation(attenuation) end

---@return number
function GPUParticlesAttractor3D.get_attenuation() end

---@param amount number
function GPUParticlesAttractor3D.set_directionality(amount) end

---@return number
function GPUParticlesAttractor3D.get_directionality() end
