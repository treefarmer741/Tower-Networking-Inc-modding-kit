---@meta _
-- Generated API for game version 0.10.0

---@class FogVolume : VisualInstance3D
---@field size Vector3
---@field shape integer
---@field material FogMaterial,ShaderMaterial
local FogVolume = {}

---@param size Vector3
function FogVolume.set_size(size) end

---@return Vector3
function FogVolume.get_size() end

---@param shape RenderingServer.FogVolumeShape
function FogVolume.set_shape(shape) end

---@return RenderingServer.FogVolumeShape
function FogVolume.get_shape() end

---@param material Material
function FogVolume.set_material(material) end

---@return Material
function FogVolume.get_material() end
