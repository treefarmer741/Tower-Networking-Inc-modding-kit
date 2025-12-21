---@meta _
-- Generated API for game version 0.9.1

---@class TileMap : Node2D
---@field tile_set TileSet
---@field rendering_quadrant_size integer
---@field collision_animatable boolean
---@field collision_visibility_mode integer
---@field navigation_visibility_mode integer
---@field layers layer_
local TileMap = {}

---@param layer integer
---@param map RID
function TileMap.set_navigation_map(layer, map) end

---@param layer integer
---@return RID
function TileMap.get_navigation_map(layer) end

---@param layer integer?  # Default = -1
function TileMap.force_update(layer) end

---@param tileset TileSet
function TileMap.set_tileset(tileset) end

---@return TileSet
function TileMap.get_tileset() end

---@param size integer
function TileMap.set_rendering_quadrant_size(size) end

---@return integer
function TileMap.get_rendering_quadrant_size() end

---@return integer
function TileMap.get_layers_count() end

---@param to_position integer
function TileMap.add_layer(to_position) end

---@param layer integer
---@param to_position integer
function TileMap.move_layer(layer, to_position) end

---@param layer integer
function TileMap.remove_layer(layer) end

---@param layer integer
---@param name string
function TileMap.set_layer_name(layer, name) end

---@param layer integer
---@return string
function TileMap.get_layer_name(layer) end

---@param layer integer
---@param enabled boolean
function TileMap.set_layer_enabled(layer, enabled) end

---@param layer integer
---@return boolean
function TileMap.is_layer_enabled(layer) end

---@param layer integer
---@param modulate Color
function TileMap.set_layer_modulate(layer, modulate) end

---@param layer integer
---@return Color
function TileMap.get_layer_modulate(layer) end

---@param layer integer
---@param y_sort_enabled boolean
function TileMap.set_layer_y_sort_enabled(layer, y_sort_enabled) end

---@param layer integer
---@return boolean
function TileMap.is_layer_y_sort_enabled(layer) end

---@param layer integer
---@param y_sort_origin integer
function TileMap.set_layer_y_sort_origin(layer, y_sort_origin) end

---@param layer integer
---@return integer
function TileMap.get_layer_y_sort_origin(layer) end

---@param layer integer
---@param z_index integer
function TileMap.set_layer_z_index(layer, z_index) end

---@param layer integer
---@return integer
function TileMap.get_layer_z_index(layer) end

---@param layer integer
---@param enabled boolean
function TileMap.set_layer_navigation_enabled(layer, enabled) end

---@param layer integer
---@return boolean
function TileMap.is_layer_navigation_enabled(layer) end

---@param layer integer
---@param map RID
function TileMap.set_layer_navigation_map(layer, map) end

---@param layer integer
---@return RID
function TileMap.get_layer_navigation_map(layer) end

---@param enabled boolean
function TileMap.set_collision_animatable(enabled) end

---@return boolean
function TileMap.is_collision_animatable() end

---@param collision_visibility_mode TileMap.VisibilityMode
function TileMap.set_collision_visibility_mode(collision_visibility_mode) end

---@return TileMap.VisibilityMode
function TileMap.get_collision_visibility_mode() end

---@param navigation_visibility_mode TileMap.VisibilityMode
function TileMap.set_navigation_visibility_mode(navigation_visibility_mode) end

---@return TileMap.VisibilityMode
function TileMap.get_navigation_visibility_mode() end

---@param layer integer
---@param coords Vector2i
---@param source_id integer?  # Default = -1
---@param atlas_coords Vector2i?  # Default = (-1, -1)
---@param alternative_tile integer?  # Default = 0
function TileMap.set_cell(layer, coords, source_id, atlas_coords, alternative_tile) end

---@param layer integer
---@param coords Vector2i
function TileMap.erase_cell(layer, coords) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return integer
function TileMap.get_cell_source_id(layer, coords, use_proxies) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return Vector2i
function TileMap.get_cell_atlas_coords(layer, coords, use_proxies) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return integer
function TileMap.get_cell_alternative_tile(layer, coords, use_proxies) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return TileData
function TileMap.get_cell_tile_data(layer, coords, use_proxies) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return boolean
function TileMap.is_cell_flipped_h(layer, coords, use_proxies) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return boolean
function TileMap.is_cell_flipped_v(layer, coords, use_proxies) end

---@param layer integer
---@param coords Vector2i
---@param use_proxies boolean?  # Default = false
---@return boolean
function TileMap.is_cell_transposed(layer, coords, use_proxies) end

---@param body RID
---@return Vector2i
function TileMap.get_coords_for_body_rid(body) end

---@param body RID
---@return integer
function TileMap.get_layer_for_body_rid(body) end

---@param layer integer
---@param coords_array Array<Vector2i>
---@return TileMapPattern
function TileMap.get_pattern(layer, coords_array) end

---@param position_in_tilemap Vector2i
---@param coords_in_pattern Vector2i
---@param pattern TileMapPattern
---@return Vector2i
function TileMap.map_pattern(position_in_tilemap, coords_in_pattern, pattern) end

---@param layer integer
---@param position Vector2i
---@param pattern TileMapPattern
function TileMap.set_pattern(layer, position, pattern) end

---@param layer integer
---@param cells Array<Vector2i>
---@param terrain_set integer
---@param terrain integer
---@param ignore_empty_terrains boolean?  # Default = true
function TileMap.set_cells_terrain_connect(layer, cells, terrain_set, terrain, ignore_empty_terrains) end

---@param layer integer
---@param path Array<Vector2i>
---@param terrain_set integer
---@param terrain integer
---@param ignore_empty_terrains boolean?  # Default = true
function TileMap.set_cells_terrain_path(layer, path, terrain_set, terrain, ignore_empty_terrains) end

function TileMap.fix_invalid_tiles() end

---@param layer integer
function TileMap.clear_layer(layer) end

function TileMap.clear() end

function TileMap.update_internals() end

---@param layer integer?  # Default = -1
function TileMap.notify_runtime_tile_data_update(layer) end

---@param coords Vector2i
---@return Array<Vector2i>
function TileMap.get_surrounding_cells(coords) end

---@param layer integer
---@return Array<Vector2i>
function TileMap.get_used_cells(layer) end

---@param layer integer
---@param source_id integer?  # Default = -1
---@param atlas_coords Vector2i?  # Default = (-1, -1)
---@param alternative_tile integer?  # Default = -1
---@return Array<Vector2i>
function TileMap.get_used_cells_by_id(layer, source_id, atlas_coords, alternative_tile) end

---@return Rect2i
function TileMap.get_used_rect() end

---@param map_position Vector2i
---@return Vector2
function TileMap.map_to_local(map_position) end

---@param local_position Vector2
---@return Vector2i
function TileMap.local_to_map(local_position) end

---@param coords Vector2i
---@param neighbor TileSet.CellNeighbor
---@return Vector2i
function TileMap.get_neighbor_cell(coords, neighbor) end
