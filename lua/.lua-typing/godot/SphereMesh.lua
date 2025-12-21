---@meta _
-- Generated API for game version 0.9.1

---@class SphereMesh : PrimitiveMesh
---@field radius number
---@field height number
---@field radial_segments integer
---@field rings integer
---@field is_hemisphere boolean
local SphereMesh = {}

---@param radius number
function SphereMesh.set_radius(radius) end

---@return number
function SphereMesh.get_radius() end

---@param height number
function SphereMesh.set_height(height) end

---@return number
function SphereMesh.get_height() end

---@param radial_segments integer
function SphereMesh.set_radial_segments(radial_segments) end

---@return integer
function SphereMesh.get_radial_segments() end

---@param rings integer
function SphereMesh.set_rings(rings) end

---@return integer
function SphereMesh.get_rings() end

---@param is_hemisphere boolean
function SphereMesh.set_is_hemisphere(is_hemisphere) end

---@return boolean
function SphereMesh.get_is_hemisphere() end
