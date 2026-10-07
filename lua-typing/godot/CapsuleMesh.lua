---@meta _
-- Generated API for game version 0.10.0

---@class CapsuleMesh : PrimitiveMesh
---@field radius number
---@field height number
---@field radial_segments integer
---@field rings integer
local CapsuleMesh = {}

---@param radius number
function CapsuleMesh.set_radius(radius) end

---@return number
function CapsuleMesh.get_radius() end

---@param height number
function CapsuleMesh.set_height(height) end

---@return number
function CapsuleMesh.get_height() end

---@param segments integer
function CapsuleMesh.set_radial_segments(segments) end

---@return integer
function CapsuleMesh.get_radial_segments() end

---@param rings integer
function CapsuleMesh.set_rings(rings) end

---@return integer
function CapsuleMesh.get_rings() end
