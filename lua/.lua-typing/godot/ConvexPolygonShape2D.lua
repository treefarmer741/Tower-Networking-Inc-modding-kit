---@meta _
-- Generated API for game version 0.10.0

---@class ConvexPolygonShape2D : Shape2D
---@field points PackedVector2Array
local ConvexPolygonShape2D = {}

---@param point_cloud PackedVector2Array
function ConvexPolygonShape2D.set_point_cloud(point_cloud) end

---@param points PackedVector2Array
function ConvexPolygonShape2D.set_points(points) end

---@return PackedVector2Array
function ConvexPolygonShape2D.get_points() end
