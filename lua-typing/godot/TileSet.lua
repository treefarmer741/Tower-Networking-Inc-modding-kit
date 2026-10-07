---@meta _
-- Generated API for game version 0.10.0

---@class TileSet : Resource
---@field tile_shape integer
---@field tile_layout integer
---@field tile_offset_axis integer
---@field tile_size Vector2i
---@field uv_clipping boolean
---@field occlusion_layers occlusion_layer_
---@field physics_layers physics_layer_
---@field terrain_sets terrain_set_
---@field navigation_layers navigation_layer_
---@field custom_data_layers custom_data_layer_
local TileSet = {}

---@return integer
function TileSet.get_next_source_id() end

---@param source TileSetSource
---@param atlas_source_id_override integer?  # Default = -1
---@return integer
function TileSet.add_source(source, atlas_source_id_override) end

---@param source_id integer
function TileSet.remove_source(source_id) end

---@param source_id integer
---@param new_source_id integer
function TileSet.set_source_id(source_id, new_source_id) end

---@return integer
function TileSet.get_source_count() end

---@param index integer
---@return integer
function TileSet.get_source_id(index) end

---@param source_id integer
---@return boolean
function TileSet.has_source(source_id) end

---@param source_id integer
---@return TileSetSource
function TileSet.get_source(source_id) end

---@param shape TileSet.TileShape
function TileSet.set_tile_shape(shape) end

---@return TileSet.TileShape
function TileSet.get_tile_shape() end

---@param layout TileSet.TileLayout
function TileSet.set_tile_layout(layout) end

---@return TileSet.TileLayout
function TileSet.get_tile_layout() end

---@param alignment TileSet.TileOffsetAxis
function TileSet.set_tile_offset_axis(alignment) end

---@return TileSet.TileOffsetAxis
function TileSet.get_tile_offset_axis() end

---@param size Vector2i
function TileSet.set_tile_size(size) end

---@return Vector2i
function TileSet.get_tile_size() end

---@param uv_clipping boolean
function TileSet.set_uv_clipping(uv_clipping) end

---@return boolean
function TileSet.is_uv_clipping() end

---@return integer
function TileSet.get_occlusion_layers_count() end

---@param to_position integer?  # Default = -1
function TileSet.add_occlusion_layer(to_position) end

---@param layer_index integer
---@param to_position integer
function TileSet.move_occlusion_layer(layer_index, to_position) end

---@param layer_index integer
function TileSet.remove_occlusion_layer(layer_index) end

---@param layer_index integer
---@param light_mask integer
function TileSet.set_occlusion_layer_light_mask(layer_index, light_mask) end

---@param layer_index integer
---@return integer
function TileSet.get_occlusion_layer_light_mask(layer_index) end

---@param layer_index integer
---@param sdf_collision boolean
function TileSet.set_occlusion_layer_sdf_collision(layer_index, sdf_collision) end

---@param layer_index integer
---@return boolean
function TileSet.get_occlusion_layer_sdf_collision(layer_index) end

---@return integer
function TileSet.get_physics_layers_count() end

---@param to_position integer?  # Default = -1
function TileSet.add_physics_layer(to_position) end

---@param layer_index integer
---@param to_position integer
function TileSet.move_physics_layer(layer_index, to_position) end

---@param layer_index integer
function TileSet.remove_physics_layer(layer_index) end

---@param layer_index integer
---@param layer integer
function TileSet.set_physics_layer_collision_layer(layer_index, layer) end

---@param layer_index integer
---@return integer
function TileSet.get_physics_layer_collision_layer(layer_index) end

---@param layer_index integer
---@param mask integer
function TileSet.set_physics_layer_collision_mask(layer_index, mask) end

---@param layer_index integer
---@return integer
function TileSet.get_physics_layer_collision_mask(layer_index) end

---@param layer_index integer
---@param priority number
function TileSet.set_physics_layer_collision_priority(layer_index, priority) end

---@param layer_index integer
---@return number
function TileSet.get_physics_layer_collision_priority(layer_index) end

---@param layer_index integer
---@param physics_material PhysicsMaterial
function TileSet.set_physics_layer_physics_material(layer_index, physics_material) end

---@param layer_index integer
---@return PhysicsMaterial
function TileSet.get_physics_layer_physics_material(layer_index) end

---@return integer
function TileSet.get_terrain_sets_count() end

---@param to_position integer?  # Default = -1
function TileSet.add_terrain_set(to_position) end

---@param terrain_set integer
---@param to_position integer
function TileSet.move_terrain_set(terrain_set, to_position) end

---@param terrain_set integer
function TileSet.remove_terrain_set(terrain_set) end

---@param terrain_set integer
---@param mode TileSet.TerrainMode
function TileSet.set_terrain_set_mode(terrain_set, mode) end

---@param terrain_set integer
---@return TileSet.TerrainMode
function TileSet.get_terrain_set_mode(terrain_set) end

---@param terrain_set integer
---@return integer
function TileSet.get_terrains_count(terrain_set) end

---@param terrain_set integer
---@param to_position integer?  # Default = -1
function TileSet.add_terrain(terrain_set, to_position) end

---@param terrain_set integer
---@param terrain_index integer
---@param to_position integer
function TileSet.move_terrain(terrain_set, terrain_index, to_position) end

---@param terrain_set integer
---@param terrain_index integer
function TileSet.remove_terrain(terrain_set, terrain_index) end

---@param terrain_set integer
---@param terrain_index integer
---@param name string
function TileSet.set_terrain_name(terrain_set, terrain_index, name) end

---@param terrain_set integer
---@param terrain_index integer
---@return string
function TileSet.get_terrain_name(terrain_set, terrain_index) end

---@param terrain_set integer
---@param terrain_index integer
---@param color Color
function TileSet.set_terrain_color(terrain_set, terrain_index, color) end

---@param terrain_set integer
---@param terrain_index integer
---@return Color
function TileSet.get_terrain_color(terrain_set, terrain_index) end

---@return integer
function TileSet.get_navigation_layers_count() end

---@param to_position integer?  # Default = -1
function TileSet.add_navigation_layer(to_position) end

---@param layer_index integer
---@param to_position integer
function TileSet.move_navigation_layer(layer_index, to_position) end

---@param layer_index integer
function TileSet.remove_navigation_layer(layer_index) end

---@param layer_index integer
---@param layers integer
function TileSet.set_navigation_layer_layers(layer_index, layers) end

---@param layer_index integer
---@return integer
function TileSet.get_navigation_layer_layers(layer_index) end

---@param layer_index integer
---@param layer_number integer
---@param value boolean
function TileSet.set_navigation_layer_layer_value(layer_index, layer_number, value) end

---@param layer_index integer
---@param layer_number integer
---@return boolean
function TileSet.get_navigation_layer_layer_value(layer_index, layer_number) end

---@return integer
function TileSet.get_custom_data_layers_count() end

---@param to_position integer?  # Default = -1
function TileSet.add_custom_data_layer(to_position) end

---@param layer_index integer
---@param to_position integer
function TileSet.move_custom_data_layer(layer_index, to_position) end

---@param layer_index integer
function TileSet.remove_custom_data_layer(layer_index) end

---@param layer_name string
---@return integer
function TileSet.get_custom_data_layer_by_name(layer_name) end

---@param layer_index integer
---@param layer_name string
function TileSet.set_custom_data_layer_name(layer_index, layer_name) end

---@param layer_name string
---@return boolean
function TileSet.has_custom_data_layer_by_name(layer_name) end

---@param layer_index integer
---@return string
function TileSet.get_custom_data_layer_name(layer_index) end

---@param layer_index integer
---@param layer_type Variant.Type
function TileSet.set_custom_data_layer_type(layer_index, layer_type) end

---@param layer_index integer
---@return Variant.Type
function TileSet.get_custom_data_layer_type(layer_index) end

---@param source_from integer
---@param source_to integer
function TileSet.set_source_level_tile_proxy(source_from, source_to) end

---@param source_from integer
---@return integer
function TileSet.get_source_level_tile_proxy(source_from) end

---@param source_from integer
---@return boolean
function TileSet.has_source_level_tile_proxy(source_from) end

---@param source_from integer
function TileSet.remove_source_level_tile_proxy(source_from) end

---@param p_source_from integer
---@param coords_from Vector2i
---@param source_to integer
---@param coords_to Vector2i
function TileSet.set_coords_level_tile_proxy(p_source_from, coords_from, source_to, coords_to) end

---@param source_from integer
---@param coords_from Vector2i
---@return Array<any>
function TileSet.get_coords_level_tile_proxy(source_from, coords_from) end

---@param source_from integer
---@param coords_from Vector2i
---@return boolean
function TileSet.has_coords_level_tile_proxy(source_from, coords_from) end

---@param source_from integer
---@param coords_from Vector2i
function TileSet.remove_coords_level_tile_proxy(source_from, coords_from) end

---@param source_from integer
---@param coords_from Vector2i
---@param alternative_from integer
---@param source_to integer
---@param coords_to Vector2i
---@param alternative_to integer
function TileSet.set_alternative_level_tile_proxy(source_from, coords_from, alternative_from, source_to, coords_to, alternative_to) end

---@param source_from integer
---@param coords_from Vector2i
---@param alternative_from integer
---@return Array<any>
function TileSet.get_alternative_level_tile_proxy(source_from, coords_from, alternative_from) end

---@param source_from integer
---@param coords_from Vector2i
---@param alternative_from integer
---@return boolean
function TileSet.has_alternative_level_tile_proxy(source_from, coords_from, alternative_from) end

---@param source_from integer
---@param coords_from Vector2i
---@param alternative_from integer
function TileSet.remove_alternative_level_tile_proxy(source_from, coords_from, alternative_from) end

---@param source_from integer
---@param coords_from Vector2i
---@param alternative_from integer
---@return Array<any>
function TileSet.map_tile_proxy(source_from, coords_from, alternative_from) end

function TileSet.cleanup_invalid_tile_proxies() end

function TileSet.clear_tile_proxies() end

---@param pattern TileMapPattern
---@param index integer?  # Default = -1
---@return integer
function TileSet.add_pattern(pattern, index) end

---@param index integer?  # Default = -1
---@return TileMapPattern
function TileSet.get_pattern(index) end

---@param index integer
function TileSet.remove_pattern(index) end

---@return integer
function TileSet.get_patterns_count() end
