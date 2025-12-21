---@meta _
-- Generated API for game version 0.9.1

---@class RibbonTrailMesh : PrimitiveMesh
---@field shape integer
---@field size number
---@field sections integer
---@field section_length number
---@field section_segments integer
---@field curve Curve
local RibbonTrailMesh = {}

---@param size number
function RibbonTrailMesh.set_size(size) end

---@return number
function RibbonTrailMesh.get_size() end

---@param sections integer
function RibbonTrailMesh.set_sections(sections) end

---@return integer
function RibbonTrailMesh.get_sections() end

---@param section_length number
function RibbonTrailMesh.set_section_length(section_length) end

---@return number
function RibbonTrailMesh.get_section_length() end

---@param section_segments integer
function RibbonTrailMesh.set_section_segments(section_segments) end

---@return integer
function RibbonTrailMesh.get_section_segments() end

---@param curve Curve
function RibbonTrailMesh.set_curve(curve) end

---@return Curve
function RibbonTrailMesh.get_curve() end

---@param shape RibbonTrailMesh.Shape
function RibbonTrailMesh.set_shape(shape) end

---@return RibbonTrailMesh.Shape
function RibbonTrailMesh.get_shape() end
