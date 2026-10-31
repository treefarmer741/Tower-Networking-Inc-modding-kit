---@meta _
-- Generated API for game version 0.10.0

---@class VisualShaderNodeParticleMeshEmitter : VisualShaderNodeParticleEmitter
---@field mesh Mesh
---@field use_all_surfaces boolean
---@field surface_index integer
local VisualShaderNodeParticleMeshEmitter = {}

---@param mesh Mesh
function VisualShaderNodeParticleMeshEmitter.set_mesh(mesh) end

---@return Mesh
function VisualShaderNodeParticleMeshEmitter.get_mesh() end

---@param enabled boolean
function VisualShaderNodeParticleMeshEmitter.set_use_all_surfaces(enabled) end

---@return boolean
function VisualShaderNodeParticleMeshEmitter.is_use_all_surfaces() end

---@param surface_index integer
function VisualShaderNodeParticleMeshEmitter.set_surface_index(surface_index) end

---@return integer
function VisualShaderNodeParticleMeshEmitter.get_surface_index() end
