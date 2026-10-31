---@meta _
-- Generated API for game version 0.10.0

---@class FogMaterial : Material
---@field density number
---@field albedo Color
---@field emission Color
---@field height_falloff number
---@field edge_fade number
---@field density_texture Texture3D
local FogMaterial = {}

---@param density number
function FogMaterial.set_density(density) end

---@return number
function FogMaterial.get_density() end

---@param albedo Color
function FogMaterial.set_albedo(albedo) end

---@return Color
function FogMaterial.get_albedo() end

---@param emission Color
function FogMaterial.set_emission(emission) end

---@return Color
function FogMaterial.get_emission() end

---@param height_falloff number
function FogMaterial.set_height_falloff(height_falloff) end

---@return number
function FogMaterial.get_height_falloff() end

---@param edge_fade number
function FogMaterial.set_edge_fade(edge_fade) end

---@return number
function FogMaterial.get_edge_fade() end

---@param density_texture Texture3D
function FogMaterial.set_density_texture(density_texture) end

---@return Texture3D
function FogMaterial.get_density_texture() end
