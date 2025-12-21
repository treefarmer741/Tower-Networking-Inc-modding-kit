---@meta _
-- Generated API for game version 0.9.1

---@class TileMapLayer : Node2D
---@field tile_map_data PackedByteArray
---@field enabled boolean
---@field tile_set TileSet
---@field occlusion_enabled boolean
---@field y_sort_origin integer
---@field x_draw_order_reversed boolean
---@field rendering_quadrant_size integer
---@field collision_enabled boolean
---@field use_kinematic_bodies boolean
---@field collision_visibility_mode integer
---@field physics_quadrant_size integer
---@field navigation_enabled boolean
---@field navigation_visibility_mode integer
local TileMapLayer = {}

---@param coords Vector2i
---@param source_id integer?  # Default = -1
---@param atlas_coords Vector2i?  # Default = (-1, -1)
---@param alternative_tile integer?  # Default = 0
function TileMapLayer.set_cell(coords, source_id, atlas_coords, alternative_tile) end

---@param coords Vector2i
function TileMapLayer.erase_cell(coords) end

function TileMapLayer.fix_invalid_tiles() end

function TileMapLayer.clear() end

---@param coords Vector2i
---@return integer
function TileMapLayer.get_cell_source_id(coords) end

---@param coords Vector2i
---@return Vector2i
function TileMapLayer.get_cell_atlas_coords(coords) end

---@param coords Vector2i
---@return integer
function TileMapLayer.get_cell_alternative_tile(coords) end

---@param coords Vector2i
---@return TileData
function TileMapLayer.get_cell_tile_data(coords) end

---@param coords Vector2i
---@return boolean
function TileMapLayer.is_cell_flipped_h(coords) end

---@param coords Vector2i
---@return boolean
function TileMapLayer.is_cell_flipped_v(coords) end

---@param coords Vector2i
---@return boolean
function TileMapLayer.is_cell_transposed(coords) end

---@return Array<Vector2i>
function TileMapLayer.get_used_cells() end

---@param source_id integer?  # Default = -1
---@param atlas_coords Vector2i?  # Default = (-1, -1)
---@param alternative_tile integer?  # Default = -1
---@return Array<Vector2i>
function TileMapLayer.get_used_cells_by_id(source_id, atlas_coords, alternative_tile) end

---@return Rect2i
function TileMapLayer.get_used_rect() end

---@param coords_array Array<Vector2i>
---@return TileMapPattern
function TileMapLayer.get_pattern(coords_array) end

---@param position Vector2i
---@param pattern TileMapPattern
function TileMapLayer.set_pattern(position, pattern) end

---@param cells Array<Vector2i>
---@param terrain_set integer
---@param terrain integer
---@param ignore_empty_terrains boolean?  # Default = true
function TileMapLayer.set_cells_terrain_connect(cells, terrain_set, terrain, ignore_empty_terrains) end

---@param path Array<Vector2i>
---@param terrain_set integer
---@param terrain integer
---@param ignore_empty_terrains boolean?  # Default = true
function TileMapLayer.set_cells_terrain_path(path, terrain_set, terrain, ignore_empty_terrains) end

---@param body RID
---@return boolean
function TileMapLayer.has_body_rid(body) end

---@param body RID
---@return Vector2i
function TileMapLayer.get_coords_for_body_rid(body) end

function TileMapLayer.update_internals() end

function TileMapLayer.notify_runtime_tile_data_update() end

---@param position_in_tilemap Vector2i
---@param coords_in_pattern Vector2i
---@param pattern TileMapPattern
---@return Vector2i
function TileMapLayer.map_pattern(position_in_tilemap, coords_in_pattern, pattern) end

---@param coords Vector2i
---@return Array<Vector2i>
function TileMapLayer.get_surrounding_cells(coords) end

---@param coords Vector2i
---@param neighbor TileSet.CellNeighbor
---@return Vector2i
function TileMapLayer.get_neighbor_cell(coords, neighbor) end

---@param map_position Vector2i
---@return Vector2
function TileMapLayer.map_to_local(map_position) end

---@param local_position Vector2
---@return Vector2i
function TileMapLayer.local_to_map(local_position) end

---@param tile_map_layer_data PackedByteArray
function TileMapLayer.set_tile_map_data_from_array(tile_map_layer_data) end

---@return PackedByteArray
function TileMapLayer.get_tile_map_data_as_array() end

---@param enabled boolean
function TileMapLayer.set_enabled(enabled) end

---@return boolean
function TileMapLayer.is_enabled() end

---@param tile_set TileSet
function TileMapLayer.set_tile_set(tile_set) end

---@return TileSet
function TileMapLayer.get_tile_set() end

---@param y_sort_origin integer
function TileMapLayer.set_y_sort_origin(y_sort_origin) end

---@return integer
function TileMapLayer.get_y_sort_origin() end

---@param x_draw_order_reversed boolean
function TileMapLayer.set_x_draw_order_reversed(x_draw_order_reversed) end

---@return boolean
function TileMapLayer.is_x_draw_order_reversed() end

---@param size integer
function TileMapLayer.set_rendering_quadrant_size(size) end

---@return integer
function TileMapLayer.get_rendering_quadrant_size() end

---@param enabled boolean
function TileMapLayer.set_collision_enabled(enabled) end

---@return boolean
function TileMapLayer.is_collision_enabled() end

---@param use_kinematic_bodies boolean
function TileMapLayer.set_use_kinematic_bodies(use_kinematic_bodies) end

---@return boolean
function TileMapLayer.is_using_kinematic_bodies() end

---@param visibility_mode TileMapLayer.DebugVisibilityMode
function TileMapLayer.set_collision_visibility_mode(visibility_mode) end

---@return TileMapLayer.DebugVisibilityMode
function TileMapLayer.get_collision_visibility_mode() end

---@param size integer
function TileMapLayer.set_physics_quadrant_size(size) end

---@return integer
function TileMapLayer.get_physics_quadrant_size() end

---@param enabled boolean
function TileMapLayer.set_occlusion_enabled(enabled) end

---@return boolean
function TileMapLayer.is_occlusion_enabled() end

---@param enabled boolean
function TileMapLayer.set_navigation_enabled(enabled) end

---@return boolean
function TileMapLayer.is_navigation_enabled() end

---@param map RID
function TileMapLayer.set_navigation_map(map) end

---@return RID
function TileMapLayer.get_navigation_map() end

---@param show_navigation TileMapLayer.DebugVisibilityMode
function TileMapLayer.set_navigation_visibility_mode(show_navigation) end

---@return TileMapLayer.DebugVisibilityMode
function TileMapLayer.get_navigation_visibility_mode() end
