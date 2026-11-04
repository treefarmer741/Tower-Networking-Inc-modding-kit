---@meta _
-- Generated API for game version 0.10.0

---@class PanoramaSkyMaterial : Material
---@field panorama Texture2D
---@field filter boolean
---@field energy_multiplier number
local PanoramaSkyMaterial = {}

---@param texture Texture2D
function PanoramaSkyMaterial.set_panorama(texture) end

---@return Texture2D
function PanoramaSkyMaterial.get_panorama() end

---@param enabled boolean
function PanoramaSkyMaterial.set_filtering_enabled(enabled) end

---@return boolean
function PanoramaSkyMaterial.is_filtering_enabled() end

---@param multiplier number
function PanoramaSkyMaterial.set_energy_multiplier(multiplier) end

---@return number
function PanoramaSkyMaterial.get_energy_multiplier() end
