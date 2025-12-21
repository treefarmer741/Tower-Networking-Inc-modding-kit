---@meta _
-- Generated API for game version 0.9.1

---@class CSGPolygon3D : CSGPrimitive3D
---@field polygon PackedVector2Array
---@field mode integer
---@field depth number
---@field spin_degrees number
---@field spin_sides integer
---@field path_node string
---@field path_interval_type integer
---@field path_interval number
---@field path_simplify_angle number
---@field path_rotation integer
---@field path_rotation_accurate boolean
---@field path_local boolean
---@field path_continuous_u boolean
---@field path_u_distance number
---@field path_joined boolean
---@field smooth_faces boolean
---@field material BaseMaterial3D,ShaderMaterial
local CSGPolygon3D = {}

---@param polygon PackedVector2Array
function CSGPolygon3D.set_polygon(polygon) end

---@return PackedVector2Array
function CSGPolygon3D.get_polygon() end

---@param mode CSGPolygon3D.Mode
function CSGPolygon3D.set_mode(mode) end

---@return CSGPolygon3D.Mode
function CSGPolygon3D.get_mode() end

---@param depth number
function CSGPolygon3D.set_depth(depth) end

---@return number
function CSGPolygon3D.get_depth() end

---@param degrees number
function CSGPolygon3D.set_spin_degrees(degrees) end

---@return number
function CSGPolygon3D.get_spin_degrees() end

---@param spin_sides integer
function CSGPolygon3D.set_spin_sides(spin_sides) end

---@return integer
function CSGPolygon3D.get_spin_sides() end

---@param path string
function CSGPolygon3D.set_path_node(path) end

---@return string
function CSGPolygon3D.get_path_node() end

---@param interval_type CSGPolygon3D.PathIntervalType
function CSGPolygon3D.set_path_interval_type(interval_type) end

---@return CSGPolygon3D.PathIntervalType
function CSGPolygon3D.get_path_interval_type() end

---@param interval number
function CSGPolygon3D.set_path_interval(interval) end

---@return number
function CSGPolygon3D.get_path_interval() end

---@param degrees number
function CSGPolygon3D.set_path_simplify_angle(degrees) end

---@return number
function CSGPolygon3D.get_path_simplify_angle() end

---@param path_rotation CSGPolygon3D.PathRotation
function CSGPolygon3D.set_path_rotation(path_rotation) end

---@return CSGPolygon3D.PathRotation
function CSGPolygon3D.get_path_rotation() end

---@param enable boolean
function CSGPolygon3D.set_path_rotation_accurate(enable) end

---@return boolean
function CSGPolygon3D.get_path_rotation_accurate() end

---@param enable boolean
function CSGPolygon3D.set_path_local(enable) end

---@return boolean
function CSGPolygon3D.is_path_local() end

---@param enable boolean
function CSGPolygon3D.set_path_continuous_u(enable) end

---@return boolean
function CSGPolygon3D.is_path_continuous_u() end

---@param distance number
function CSGPolygon3D.set_path_u_distance(distance) end

---@return number
function CSGPolygon3D.get_path_u_distance() end

---@param enable boolean
function CSGPolygon3D.set_path_joined(enable) end

---@return boolean
function CSGPolygon3D.is_path_joined() end

---@param material Material
function CSGPolygon3D.set_material(material) end

---@return Material
function CSGPolygon3D.get_material() end

---@param smooth_faces boolean
function CSGPolygon3D.set_smooth_faces(smooth_faces) end

---@return boolean
function CSGPolygon3D.get_smooth_faces() end
