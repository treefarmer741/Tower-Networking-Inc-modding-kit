---@meta _
-- Generated API for game version 0.9.1

---@class PolygonPathFinder : Resource
---@field data table<any,any>
local PolygonPathFinder = {}

---@param points PackedVector2Array
---@param connections PackedInt32Array
function PolygonPathFinder.setup(points, connections) end

---@param from Vector2
---@param to Vector2
---@return PackedVector2Array
function PolygonPathFinder.find_path(from, to) end

---@param from Vector2
---@param to Vector2
---@return PackedVector2Array
function PolygonPathFinder.get_intersections(from, to) end

---@param point Vector2
---@return Vector2
function PolygonPathFinder.get_closest_point(point) end

---@param point Vector2
---@return boolean
function PolygonPathFinder.is_point_inside(point) end

---@param idx integer
---@param penalty number
function PolygonPathFinder.set_point_penalty(idx, penalty) end

---@param idx integer
---@return number
function PolygonPathFinder.get_point_penalty(idx) end

---@return Rect2
function PolygonPathFinder.get_bounds() end
