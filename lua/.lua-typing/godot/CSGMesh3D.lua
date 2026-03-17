---@meta _
-- Generated API for game version 0.10.0

---@class CSGMesh3D : CSGPrimitive3D
---@field mesh Mesh,-PlaneMesh,-PointMesh,-QuadMesh,-RibbonTrailMesh
---@field material BaseMaterial3D,ShaderMaterial
local CSGMesh3D = {}

---@param mesh Mesh
function CSGMesh3D.set_mesh(mesh) end

---@return Mesh
function CSGMesh3D.get_mesh() end

---@param material Material
function CSGMesh3D.set_material(material) end

---@return Material
function CSGMesh3D.get_material() end
