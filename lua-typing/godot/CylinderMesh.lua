---@meta _
-- Generated API for game version 0.10.0

---@class CylinderMesh : PrimitiveMesh
---@field top_radius number
---@field bottom_radius number
---@field height number
---@field radial_segments integer
---@field rings integer
---@field cap_top boolean
---@field cap_bottom boolean
local CylinderMesh = {}

---@param radius number
function CylinderMesh.set_top_radius(radius) end

---@return number
function CylinderMesh.get_top_radius() end

---@param radius number
function CylinderMesh.set_bottom_radius(radius) end

---@return number
function CylinderMesh.get_bottom_radius() end

---@param height number
function CylinderMesh.set_height(height) end

---@return number
function CylinderMesh.get_height() end

---@param segments integer
function CylinderMesh.set_radial_segments(segments) end

---@return integer
function CylinderMesh.get_radial_segments() end

---@param rings integer
function CylinderMesh.set_rings(rings) end

---@return integer
function CylinderMesh.get_rings() end

---@param cap_top boolean
function CylinderMesh.set_cap_top(cap_top) end

---@return boolean
function CylinderMesh.is_cap_top() end

---@param cap_bottom boolean
function CylinderMesh.set_cap_bottom(cap_bottom) end

---@return boolean
function CylinderMesh.is_cap_bottom() end
