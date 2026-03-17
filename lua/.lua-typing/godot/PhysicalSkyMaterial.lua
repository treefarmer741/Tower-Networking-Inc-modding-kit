---@meta _
-- Generated API for game version 0.10.0

---@class PhysicalSkyMaterial : Material
---@field rayleigh_coefficient number
---@field rayleigh_color Color
---@field mie_coefficient number
---@field mie_eccentricity number
---@field mie_color Color
---@field turbidity number
---@field sun_disk_scale number
---@field ground_color Color
---@field energy_multiplier number
---@field use_debanding boolean
---@field night_sky Texture2D
local PhysicalSkyMaterial = {}

---@param rayleigh number
function PhysicalSkyMaterial.set_rayleigh_coefficient(rayleigh) end

---@return number
function PhysicalSkyMaterial.get_rayleigh_coefficient() end

---@param color Color
function PhysicalSkyMaterial.set_rayleigh_color(color) end

---@return Color
function PhysicalSkyMaterial.get_rayleigh_color() end

---@param mie number
function PhysicalSkyMaterial.set_mie_coefficient(mie) end

---@return number
function PhysicalSkyMaterial.get_mie_coefficient() end

---@param eccentricity number
function PhysicalSkyMaterial.set_mie_eccentricity(eccentricity) end

---@return number
function PhysicalSkyMaterial.get_mie_eccentricity() end

---@param color Color
function PhysicalSkyMaterial.set_mie_color(color) end

---@return Color
function PhysicalSkyMaterial.get_mie_color() end

---@param turbidity number
function PhysicalSkyMaterial.set_turbidity(turbidity) end

---@return number
function PhysicalSkyMaterial.get_turbidity() end

---@param scale number
function PhysicalSkyMaterial.set_sun_disk_scale(scale) end

---@return number
function PhysicalSkyMaterial.get_sun_disk_scale() end

---@param color Color
function PhysicalSkyMaterial.set_ground_color(color) end

---@return Color
function PhysicalSkyMaterial.get_ground_color() end

---@param multiplier number
function PhysicalSkyMaterial.set_energy_multiplier(multiplier) end

---@return number
function PhysicalSkyMaterial.get_energy_multiplier() end

---@param use_debanding boolean
function PhysicalSkyMaterial.set_use_debanding(use_debanding) end

---@return boolean
function PhysicalSkyMaterial.get_use_debanding() end

---@param night_sky Texture2D
function PhysicalSkyMaterial.set_night_sky(night_sky) end

---@return Texture2D
function PhysicalSkyMaterial.get_night_sky() end
