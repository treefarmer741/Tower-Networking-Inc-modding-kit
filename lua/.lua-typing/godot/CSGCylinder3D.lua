---@meta _
-- Generated API for game version 0.9.1

---@class CSGCylinder3D : CSGPrimitive3D
---@field radius number
---@field height number
---@field sides integer
---@field cone boolean
---@field smooth_faces boolean
---@field material BaseMaterial3D,ShaderMaterial
local CSGCylinder3D = {}

---@param radius number
function CSGCylinder3D.set_radius(radius) end

---@return number
function CSGCylinder3D.get_radius() end

---@param height number
function CSGCylinder3D.set_height(height) end

---@return number
function CSGCylinder3D.get_height() end

---@param sides integer
function CSGCylinder3D.set_sides(sides) end

---@return integer
function CSGCylinder3D.get_sides() end

---@param cone boolean
function CSGCylinder3D.set_cone(cone) end

---@return boolean
function CSGCylinder3D.is_cone() end

---@param material Material
function CSGCylinder3D.set_material(material) end

---@return Material
function CSGCylinder3D.get_material() end

---@param smooth_faces boolean
function CSGCylinder3D.set_smooth_faces(smooth_faces) end

---@return boolean
function CSGCylinder3D.get_smooth_faces() end
