---@meta _
-- Generated API for game version 0.10.0

---@class ProceduralSkyMaterial : Material
---@field sky_top_color Color
---@field sky_horizon_color Color
---@field sky_curve number
---@field sky_energy_multiplier number
---@field sky_cover Texture2D
---@field sky_cover_modulate Color
---@field ground_bottom_color Color
---@field ground_horizon_color Color
---@field ground_curve number
---@field ground_energy_multiplier number
---@field sun_angle_max number
---@field sun_curve number
---@field use_debanding boolean
---@field energy_multiplier number
local ProceduralSkyMaterial = {}

---@param color Color
function ProceduralSkyMaterial.set_sky_top_color(color) end

---@return Color
function ProceduralSkyMaterial.get_sky_top_color() end

---@param color Color
function ProceduralSkyMaterial.set_sky_horizon_color(color) end

---@return Color
function ProceduralSkyMaterial.get_sky_horizon_color() end

---@param curve number
function ProceduralSkyMaterial.set_sky_curve(curve) end

---@return number
function ProceduralSkyMaterial.get_sky_curve() end

---@param multiplier number
function ProceduralSkyMaterial.set_sky_energy_multiplier(multiplier) end

---@return number
function ProceduralSkyMaterial.get_sky_energy_multiplier() end

---@param sky_cover Texture2D
function ProceduralSkyMaterial.set_sky_cover(sky_cover) end

---@return Texture2D
function ProceduralSkyMaterial.get_sky_cover() end

---@param color Color
function ProceduralSkyMaterial.set_sky_cover_modulate(color) end

---@return Color
function ProceduralSkyMaterial.get_sky_cover_modulate() end

---@param color Color
function ProceduralSkyMaterial.set_ground_bottom_color(color) end

---@return Color
function ProceduralSkyMaterial.get_ground_bottom_color() end

---@param color Color
function ProceduralSkyMaterial.set_ground_horizon_color(color) end

---@return Color
function ProceduralSkyMaterial.get_ground_horizon_color() end

---@param curve number
function ProceduralSkyMaterial.set_ground_curve(curve) end

---@return number
function ProceduralSkyMaterial.get_ground_curve() end

---@param energy number
function ProceduralSkyMaterial.set_ground_energy_multiplier(energy) end

---@return number
function ProceduralSkyMaterial.get_ground_energy_multiplier() end

---@param degrees number
function ProceduralSkyMaterial.set_sun_angle_max(degrees) end

---@return number
function ProceduralSkyMaterial.get_sun_angle_max() end

---@param curve number
function ProceduralSkyMaterial.set_sun_curve(curve) end

---@return number
function ProceduralSkyMaterial.get_sun_curve() end

---@param use_debanding boolean
function ProceduralSkyMaterial.set_use_debanding(use_debanding) end

---@return boolean
function ProceduralSkyMaterial.get_use_debanding() end

---@param multiplier number
function ProceduralSkyMaterial.set_energy_multiplier(multiplier) end

---@return number
function ProceduralSkyMaterial.get_energy_multiplier() end
