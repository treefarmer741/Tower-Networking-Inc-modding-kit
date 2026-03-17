---@meta _
-- Generated API for game version 0.10.0

---@class BoxMesh : PrimitiveMesh
---@field size Vector3
---@field subdivide_width integer
---@field subdivide_height integer
---@field subdivide_depth integer
local BoxMesh = {}

---@param size Vector3
function BoxMesh.set_size(size) end

---@return Vector3
function BoxMesh.get_size() end

---@param subdivide integer
function BoxMesh.set_subdivide_width(subdivide) end

---@return integer
function BoxMesh.get_subdivide_width() end

---@param divisions integer
function BoxMesh.set_subdivide_height(divisions) end

---@return integer
function BoxMesh.get_subdivide_height() end

---@param divisions integer
function BoxMesh.set_subdivide_depth(divisions) end

---@return integer
function BoxMesh.get_subdivide_depth() end
