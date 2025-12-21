---@meta _
-- Generated API for game version 0.9.1

---@class Sky : Resource
---@field sky_material PanoramaSkyMaterial,ProceduralSkyMaterial,PhysicalSkyMaterial,ShaderMaterial
---@field process_mode integer
---@field radiance_size integer
local Sky = {}

---@param size Sky.RadianceSize
function Sky.set_radiance_size(size) end

---@return Sky.RadianceSize
function Sky.get_radiance_size() end

---@param mode Sky.ProcessMode
function Sky.set_process_mode(mode) end

---@return Sky.ProcessMode
function Sky.get_process_mode() end

---@param material Material
function Sky.set_material(material) end

---@return Material
function Sky.get_material() end
