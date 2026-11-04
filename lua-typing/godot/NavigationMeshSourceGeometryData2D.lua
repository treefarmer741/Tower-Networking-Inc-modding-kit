---@meta _
-- Generated API for game version 0.10.0

---@class NavigationMeshSourceGeometryData2D : Resource
---@field traversable_outlines Array<any>
---@field obstruction_outlines Array<any>
---@field projected_obstructions Array<any>
local NavigationMeshSourceGeometryData2D = {}

function NavigationMeshSourceGeometryData2D.clear() end

---@return boolean
function NavigationMeshSourceGeometryData2D.has_data() end

---@param traversable_outlines Array<PackedVector2Array>
function NavigationMeshSourceGeometryData2D.set_traversable_outlines(traversable_outlines) end

---@return Array<PackedVector2Array>
function NavigationMeshSourceGeometryData2D.get_traversable_outlines() end

---@param obstruction_outlines Array<PackedVector2Array>
function NavigationMeshSourceGeometryData2D.set_obstruction_outlines(obstruction_outlines) end

---@return Array<PackedVector2Array>
function NavigationMeshSourceGeometryData2D.get_obstruction_outlines() end

---@param traversable_outlines Array<PackedVector2Array>
function NavigationMeshSourceGeometryData2D.append_traversable_outlines(traversable_outlines) end

---@param obstruction_outlines Array<PackedVector2Array>
function NavigationMeshSourceGeometryData2D.append_obstruction_outlines(obstruction_outlines) end

---@param shape_outline PackedVector2Array
function NavigationMeshSourceGeometryData2D.add_traversable_outline(shape_outline) end

---@param shape_outline PackedVector2Array
function NavigationMeshSourceGeometryData2D.add_obstruction_outline(shape_outline) end

---@param other_geometry NavigationMeshSourceGeometryData2D
function NavigationMeshSourceGeometryData2D.merge(other_geometry) end

---@param vertices PackedVector2Array
---@param carve boolean
function NavigationMeshSourceGeometryData2D.add_projected_obstruction(vertices, carve) end

function NavigationMeshSourceGeometryData2D.clear_projected_obstructions() end

---@param projected_obstructions Array<any>
function NavigationMeshSourceGeometryData2D.set_projected_obstructions(projected_obstructions) end

---@return Array<any>
function NavigationMeshSourceGeometryData2D.get_projected_obstructions() end

---@return Rect2
function NavigationMeshSourceGeometryData2D.get_bounds() end
