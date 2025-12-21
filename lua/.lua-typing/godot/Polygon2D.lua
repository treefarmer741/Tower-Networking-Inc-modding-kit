---@meta _
-- Generated API for game version 0.9.1

---@class Polygon2D : Node2D
---@field color Color
---@field offset Vector2
---@field antialiased boolean
---@field texture Texture2D
---@field texture_offset Vector2
---@field texture_scale Vector2
---@field texture_rotation number
---@field skeleton string
---@field invert_enabled boolean
---@field invert_border number
---@field polygon PackedVector2Array
---@field uv PackedVector2Array
---@field vertex_colors PackedColorArray
---@field polygons Array<any>
---@field bones Array<any>
---@field internal_vertex_count integer
local Polygon2D = {}

---@param polygon PackedVector2Array
function Polygon2D.set_polygon(polygon) end

---@return PackedVector2Array
function Polygon2D.get_polygon() end

---@param uv PackedVector2Array
function Polygon2D.set_uv(uv) end

---@return PackedVector2Array
function Polygon2D.get_uv() end

---@param color Color
function Polygon2D.set_color(color) end

---@return Color
function Polygon2D.get_color() end

---@param polygons Array<any>
function Polygon2D.set_polygons(polygons) end

---@return Array<any>
function Polygon2D.get_polygons() end

---@param vertex_colors PackedColorArray
function Polygon2D.set_vertex_colors(vertex_colors) end

---@return PackedColorArray
function Polygon2D.get_vertex_colors() end

---@param texture Texture2D
function Polygon2D.set_texture(texture) end

---@return Texture2D
function Polygon2D.get_texture() end

---@param texture_offset Vector2
function Polygon2D.set_texture_offset(texture_offset) end

---@return Vector2
function Polygon2D.get_texture_offset() end

---@param texture_rotation number
function Polygon2D.set_texture_rotation(texture_rotation) end

---@return number
function Polygon2D.get_texture_rotation() end

---@param texture_scale Vector2
function Polygon2D.set_texture_scale(texture_scale) end

---@return Vector2
function Polygon2D.get_texture_scale() end

---@param invert boolean
function Polygon2D.set_invert_enabled(invert) end

---@return boolean
function Polygon2D.get_invert_enabled() end

---@param antialiased boolean
function Polygon2D.set_antialiased(antialiased) end

---@return boolean
function Polygon2D.get_antialiased() end

---@param invert_border number
function Polygon2D.set_invert_border(invert_border) end

---@return number
function Polygon2D.get_invert_border() end

---@param offset Vector2
function Polygon2D.set_offset(offset) end

---@return Vector2
function Polygon2D.get_offset() end

---@param path string
---@param weights PackedFloat32Array
function Polygon2D.add_bone(path, weights) end

---@return integer
function Polygon2D.get_bone_count() end

---@param index integer
---@return string
function Polygon2D.get_bone_path(index) end

---@param index integer
---@return PackedFloat32Array
function Polygon2D.get_bone_weights(index) end

---@param index integer
function Polygon2D.erase_bone(index) end

function Polygon2D.clear_bones() end

---@param index integer
---@param path string
function Polygon2D.set_bone_path(index, path) end

---@param index integer
---@param weights PackedFloat32Array
function Polygon2D.set_bone_weights(index, weights) end

---@param skeleton string
function Polygon2D.set_skeleton(skeleton) end

---@return string
function Polygon2D.get_skeleton() end

---@param internal_vertex_count integer
function Polygon2D.set_internal_vertex_count(internal_vertex_count) end

---@return integer
function Polygon2D.get_internal_vertex_count() end
