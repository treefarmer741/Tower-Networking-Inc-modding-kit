---@meta _
-- Generated API for game version 0.10.0

---@class TorusMesh : PrimitiveMesh
---@field inner_radius number
---@field outer_radius number
---@field rings integer
---@field ring_segments integer
local TorusMesh = {}

---@param radius number
function TorusMesh.set_inner_radius(radius) end

---@return number
function TorusMesh.get_inner_radius() end

---@param radius number
function TorusMesh.set_outer_radius(radius) end

---@return number
function TorusMesh.get_outer_radius() end

---@param rings integer
function TorusMesh.set_rings(rings) end

---@return integer
function TorusMesh.get_rings() end

---@param rings integer
function TorusMesh.set_ring_segments(rings) end

---@return integer
function TorusMesh.get_ring_segments() end
