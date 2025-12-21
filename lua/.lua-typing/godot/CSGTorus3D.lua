---@meta _
-- Generated API for game version 0.9.1

---@class CSGTorus3D : CSGPrimitive3D
---@field inner_radius number
---@field outer_radius number
---@field sides integer
---@field ring_sides integer
---@field smooth_faces boolean
---@field material BaseMaterial3D,ShaderMaterial
local CSGTorus3D = {}

---@param radius number
function CSGTorus3D.set_inner_radius(radius) end

---@return number
function CSGTorus3D.get_inner_radius() end

---@param radius number
function CSGTorus3D.set_outer_radius(radius) end

---@return number
function CSGTorus3D.get_outer_radius() end

---@param sides integer
function CSGTorus3D.set_sides(sides) end

---@return integer
function CSGTorus3D.get_sides() end

---@param sides integer
function CSGTorus3D.set_ring_sides(sides) end

---@return integer
function CSGTorus3D.get_ring_sides() end

---@param material Material
function CSGTorus3D.set_material(material) end

---@return Material
function CSGTorus3D.get_material() end

---@param smooth_faces boolean
function CSGTorus3D.set_smooth_faces(smooth_faces) end

---@return boolean
function CSGTorus3D.get_smooth_faces() end
