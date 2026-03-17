---@meta _
-- Generated API for game version 0.10.0

---@class TileData : Object
---@field flip_h boolean
---@field flip_v boolean
---@field transpose boolean
---@field texture_origin Vector2i
---@field modulate Color
---@field material CanvasItemMaterial,ShaderMaterial
---@field z_index integer
---@field y_sort_origin integer
---@field terrain_set integer
---@field terrain integer
---@field probability number
local TileData = {}

---@param flip_h boolean
function TileData.set_flip_h(flip_h) end

---@return boolean
function TileData.get_flip_h() end

---@param flip_v boolean
function TileData.set_flip_v(flip_v) end

---@return boolean
function TileData.get_flip_v() end

---@param transpose boolean
function TileData.set_transpose(transpose) end

---@return boolean
function TileData.get_transpose() end

---@param material Material
function TileData.set_material(material) end

---@return Material
function TileData.get_material() end

---@param texture_origin Vector2i
function TileData.set_texture_origin(texture_origin) end

---@return Vector2i
function TileData.get_texture_origin() end

---@param modulate Color
function TileData.set_modulate(modulate) end

---@return Color
function TileData.get_modulate() end

---@param z_index integer
function TileData.set_z_index(z_index) end

---@return integer
function TileData.get_z_index() end

---@param y_sort_origin integer
function TileData.set_y_sort_origin(y_sort_origin) end

---@return integer
function TileData.get_y_sort_origin() end

---@param layer_id integer
---@param polygons_count integer
function TileData.set_occluder_polygons_count(layer_id, polygons_count) end

---@param layer_id integer
---@return integer
function TileData.get_occluder_polygons_count(layer_id) end

---@param layer_id integer
function TileData.add_occluder_polygon(layer_id) end

---@param layer_id integer
---@param polygon_index integer
function TileData.remove_occluder_polygon(layer_id, polygon_index) end

---@param layer_id integer
---@param polygon_index integer
---@param polygon OccluderPolygon2D
function TileData.set_occluder_polygon(layer_id, polygon_index, polygon) end

---@param layer_id integer
---@param polygon_index integer
---@param flip_h boolean?  # Default = false
---@param flip_v boolean?  # Default = false
---@param transpose boolean?  # Default = false
---@return OccluderPolygon2D
function TileData.get_occluder_polygon(layer_id, polygon_index, flip_h, flip_v, transpose) end

---@param layer_id integer
---@param occluder_polygon OccluderPolygon2D
function TileData.set_occluder(layer_id, occluder_polygon) end

---@param layer_id integer
---@param flip_h boolean?  # Default = false
---@param flip_v boolean?  # Default = false
---@param transpose boolean?  # Default = false
---@return OccluderPolygon2D
function TileData.get_occluder(layer_id, flip_h, flip_v, transpose) end

---@param layer_id integer
---@param velocity Vector2
function TileData.set_constant_linear_velocity(layer_id, velocity) end

---@param layer_id integer
---@return Vector2
function TileData.get_constant_linear_velocity(layer_id) end

---@param layer_id integer
---@param velocity number
function TileData.set_constant_angular_velocity(layer_id, velocity) end

---@param layer_id integer
---@return number
function TileData.get_constant_angular_velocity(layer_id) end

---@param layer_id integer
---@param polygons_count integer
function TileData.set_collision_polygons_count(layer_id, polygons_count) end

---@param layer_id integer
---@return integer
function TileData.get_collision_polygons_count(layer_id) end

---@param layer_id integer
function TileData.add_collision_polygon(layer_id) end

---@param layer_id integer
---@param polygon_index integer
function TileData.remove_collision_polygon(layer_id, polygon_index) end

---@param layer_id integer
---@param polygon_index integer
---@param polygon PackedVector2Array
function TileData.set_collision_polygon_points(layer_id, polygon_index, polygon) end

---@param layer_id integer
---@param polygon_index integer
---@return PackedVector2Array
function TileData.get_collision_polygon_points(layer_id, polygon_index) end

---@param layer_id integer
---@param polygon_index integer
---@param one_way boolean
function TileData.set_collision_polygon_one_way(layer_id, polygon_index, one_way) end

---@param layer_id integer
---@param polygon_index integer
---@return boolean
function TileData.is_collision_polygon_one_way(layer_id, polygon_index) end

---@param layer_id integer
---@param polygon_index integer
---@param one_way_margin number
function TileData.set_collision_polygon_one_way_margin(layer_id, polygon_index, one_way_margin) end

---@param layer_id integer
---@param polygon_index integer
---@return number
function TileData.get_collision_polygon_one_way_margin(layer_id, polygon_index) end

---@param terrain_set integer
function TileData.set_terrain_set(terrain_set) end

---@return integer
function TileData.get_terrain_set() end

---@param terrain integer
function TileData.set_terrain(terrain) end

---@return integer
function TileData.get_terrain() end

---@param peering_bit TileSet.CellNeighbor
---@param terrain integer
function TileData.set_terrain_peering_bit(peering_bit, terrain) end

---@param peering_bit TileSet.CellNeighbor
---@return integer
function TileData.get_terrain_peering_bit(peering_bit) end

---@param peering_bit TileSet.CellNeighbor
---@return boolean
function TileData.is_valid_terrain_peering_bit(peering_bit) end

---@param layer_id integer
---@param navigation_polygon NavigationPolygon
function TileData.set_navigation_polygon(layer_id, navigation_polygon) end

---@param layer_id integer
---@param flip_h boolean?  # Default = false
---@param flip_v boolean?  # Default = false
---@param transpose boolean?  # Default = false
---@return NavigationPolygon
function TileData.get_navigation_polygon(layer_id, flip_h, flip_v, transpose) end

---@param probability number
function TileData.set_probability(probability) end

---@return number
function TileData.get_probability() end

---@param layer_name string
---@param value Object
function TileData.set_custom_data(layer_name, value) end

---@param layer_name string
---@return Object
function TileData.get_custom_data(layer_name) end

---@param layer_name string
---@return boolean
function TileData.has_custom_data(layer_name) end

---@param layer_id integer
---@param value Object
function TileData.set_custom_data_by_layer_id(layer_id, value) end

---@param layer_id integer
---@return Object
function TileData.get_custom_data_by_layer_id(layer_id) end
