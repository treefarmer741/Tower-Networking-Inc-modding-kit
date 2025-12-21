---@meta _
-- Generated API for game version 0.9.1

---@class CSGBox3D : CSGPrimitive3D
---@field size Vector3
---@field material BaseMaterial3D,ShaderMaterial
local CSGBox3D = {}

---@param size Vector3
function CSGBox3D.set_size(size) end

---@return Vector3
function CSGBox3D.get_size() end

---@param material Material
function CSGBox3D.set_material(material) end

---@return Material
function CSGBox3D.get_material() end
