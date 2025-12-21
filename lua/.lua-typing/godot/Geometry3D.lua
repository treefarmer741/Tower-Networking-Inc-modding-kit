---@meta _
-- Generated API for game version 0.9.1

---@class Geometry3D : Object
local Geometry3D = {}

---@param planes Array<Plane>
---@return PackedVector3Array
function Geometry3D.compute_convex_mesh_points(planes) end

---@param extents Vector3
---@return Array<Plane>
function Geometry3D.build_box_planes(extents) end

---@param radius number
---@param height number
---@param sides integer
---@param axis Vector3.Axis?  # Default = 2
---@return Array<Plane>
function Geometry3D.build_cylinder_planes(radius, height, sides, axis) end

---@param radius number
---@param height number
---@param sides integer
---@param lats integer
---@param axis Vector3.Axis?  # Default = 2
---@return Array<Plane>
function Geometry3D.build_capsule_planes(radius, height, sides, lats, axis) end

---@param p1 Vector3
---@param p2 Vector3
---@param q1 Vector3
---@param q2 Vector3
---@return PackedVector3Array
function Geometry3D.get_closest_points_between_segments(p1, p2, q1, q2) end

---@param point Vector3
---@param s1 Vector3
---@param s2 Vector3
---@return Vector3
function Geometry3D.get_closest_point_to_segment(point, s1, s2) end

---@param point Vector3
---@param s1 Vector3
---@param s2 Vector3
---@return Vector3
function Geometry3D.get_closest_point_to_segment_uncapped(point, s1, s2) end

---@param point Vector3
---@param a Vector3
---@param b Vector3
---@param c Vector3
---@return Vector3
function Geometry3D.get_triangle_barycentric_coords(point, a, b, c) end

---@param from Vector3
---@param dir Vector3
---@param a Vector3
---@param b Vector3
---@param c Vector3
---@return Object
function Geometry3D.ray_intersects_triangle(from, dir, a, b, c) end

---@param from Vector3
---@param to Vector3
---@param a Vector3
---@param b Vector3
---@param c Vector3
---@return Object
function Geometry3D.segment_intersects_triangle(from, to, a, b, c) end

---@param from Vector3
---@param to Vector3
---@param sphere_position Vector3
---@param sphere_radius number
---@return PackedVector3Array
function Geometry3D.segment_intersects_sphere(from, to, sphere_position, sphere_radius) end

---@param from Vector3
---@param to Vector3
---@param height number
---@param radius number
---@return PackedVector3Array
function Geometry3D.segment_intersects_cylinder(from, to, height, radius) end

---@param from Vector3
---@param to Vector3
---@param planes Array<Plane>
---@return PackedVector3Array
function Geometry3D.segment_intersects_convex(from, to, planes) end

---@param points PackedVector3Array
---@param plane Plane
---@return PackedVector3Array
function Geometry3D.clip_polygon(points, plane) end

---@param points PackedVector3Array
---@return PackedInt32Array
function Geometry3D.tetrahedralize_delaunay(points) end
