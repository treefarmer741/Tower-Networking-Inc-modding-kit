---@meta _
-- Generated API for game version 0.9.1

---@class Geometry2D : Object
local Geometry2D = {}

---@param point Vector2
---@param circle_position Vector2
---@param circle_radius number
---@return boolean
function Geometry2D.is_point_in_circle(point, circle_position, circle_radius) end

---@param segment_from Vector2
---@param segment_to Vector2
---@param circle_position Vector2
---@param circle_radius number
---@return number
function Geometry2D.segment_intersects_circle(segment_from, segment_to, circle_position, circle_radius) end

---@param from_a Vector2
---@param to_a Vector2
---@param from_b Vector2
---@param to_b Vector2
---@return Object
function Geometry2D.segment_intersects_segment(from_a, to_a, from_b, to_b) end

---@param from_a Vector2
---@param dir_a Vector2
---@param from_b Vector2
---@param dir_b Vector2
---@return Object
function Geometry2D.line_intersects_line(from_a, dir_a, from_b, dir_b) end

---@param p1 Vector2
---@param q1 Vector2
---@param p2 Vector2
---@param q2 Vector2
---@return PackedVector2Array
function Geometry2D.get_closest_points_between_segments(p1, q1, p2, q2) end

---@param point Vector2
---@param s1 Vector2
---@param s2 Vector2
---@return Vector2
function Geometry2D.get_closest_point_to_segment(point, s1, s2) end

---@param point Vector2
---@param s1 Vector2
---@param s2 Vector2
---@return Vector2
function Geometry2D.get_closest_point_to_segment_uncapped(point, s1, s2) end

---@param point Vector2
---@param a Vector2
---@param b Vector2
---@param c Vector2
---@return boolean
function Geometry2D.point_is_inside_triangle(point, a, b, c) end

---@param polygon PackedVector2Array
---@return boolean
function Geometry2D.is_polygon_clockwise(polygon) end

---@param point Vector2
---@param polygon PackedVector2Array
---@return boolean
function Geometry2D.is_point_in_polygon(point, polygon) end

---@param polygon PackedVector2Array
---@return PackedInt32Array
function Geometry2D.triangulate_polygon(polygon) end

---@param points PackedVector2Array
---@return PackedInt32Array
function Geometry2D.triangulate_delaunay(points) end

---@param points PackedVector2Array
---@return PackedVector2Array
function Geometry2D.convex_hull(points) end

---@param polygon PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.decompose_polygon_in_convex(polygon) end

---@param polygon_a PackedVector2Array
---@param polygon_b PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.merge_polygons(polygon_a, polygon_b) end

---@param polygon_a PackedVector2Array
---@param polygon_b PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.clip_polygons(polygon_a, polygon_b) end

---@param polygon_a PackedVector2Array
---@param polygon_b PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.intersect_polygons(polygon_a, polygon_b) end

---@param polygon_a PackedVector2Array
---@param polygon_b PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.exclude_polygons(polygon_a, polygon_b) end

---@param polyline PackedVector2Array
---@param polygon PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.clip_polyline_with_polygon(polyline, polygon) end

---@param polyline PackedVector2Array
---@param polygon PackedVector2Array
---@return Array<PackedVector2Array>
function Geometry2D.intersect_polyline_with_polygon(polyline, polygon) end

---@param polygon PackedVector2Array
---@param delta number
---@param join_type Geometry2D.PolyJoinType?  # Default = 0
---@return Array<PackedVector2Array>
function Geometry2D.offset_polygon(polygon, delta, join_type) end

---@param polyline PackedVector2Array
---@param delta number
---@param join_type Geometry2D.PolyJoinType?  # Default = 0
---@param end_type Geometry2D.PolyEndType?  # Default = 3
---@return Array<PackedVector2Array>
function Geometry2D.offset_polyline(polyline, delta, join_type, end_type) end

---@param sizes PackedVector2Array
---@return table<any,any>
function Geometry2D.make_atlas(sizes) end

---@param from Vector2i
---@param to Vector2i
---@return Array<Vector2i>
function Geometry2D.bresenham_line(from, to) end
