---@meta _
-- Generated API for game version 0.9.1

---@class PrismMesh : PrimitiveMesh
---@field left_to_right number
---@field size Vector3
---@field subdivide_width integer
---@field subdivide_height integer
---@field subdivide_depth integer
local PrismMesh = {}

---@param left_to_right number
function PrismMesh.set_left_to_right(left_to_right) end

---@return number
function PrismMesh.get_left_to_right() end

---@param size Vector3
function PrismMesh.set_size(size) end

---@return Vector3
function PrismMesh.get_size() end

---@param segments integer
function PrismMesh.set_subdivide_width(segments) end

---@return integer
function PrismMesh.get_subdivide_width() end

---@param segments integer
function PrismMesh.set_subdivide_height(segments) end

---@return integer
function PrismMesh.get_subdivide_height() end

---@param segments integer
function PrismMesh.set_subdivide_depth(segments) end

---@return integer
function PrismMesh.get_subdivide_depth() end
