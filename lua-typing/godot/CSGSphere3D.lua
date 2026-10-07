---@meta _
-- Generated API for game version 0.10.0

---@class CSGSphere3D : CSGPrimitive3D
---@field radius number
---@field radial_segments integer
---@field rings integer
---@field smooth_faces boolean
---@field material BaseMaterial3D,ShaderMaterial
local CSGSphere3D = {}

---@param radius number
function CSGSphere3D.set_radius(radius) end

---@return number
function CSGSphere3D.get_radius() end

---@param radial_segments integer
function CSGSphere3D.set_radial_segments(radial_segments) end

---@return integer
function CSGSphere3D.get_radial_segments() end

---@param rings integer
function CSGSphere3D.set_rings(rings) end

---@return integer
function CSGSphere3D.get_rings() end

---@param smooth_faces boolean
function CSGSphere3D.set_smooth_faces(smooth_faces) end

---@return boolean
function CSGSphere3D.get_smooth_faces() end

---@param material Material
function CSGSphere3D.set_material(material) end

---@return Material
function CSGSphere3D.get_material() end
