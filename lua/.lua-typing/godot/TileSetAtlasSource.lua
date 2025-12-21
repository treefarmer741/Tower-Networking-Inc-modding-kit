---@meta _
-- Generated API for game version 0.9.1

---@class TileSetAtlasSource : TileSetSource
---@field texture Texture2D
---@field margins Vector2i
---@field separation Vector2i
---@field texture_region_size Vector2i
---@field use_texture_padding boolean
local TileSetAtlasSource = {}

---@param texture Texture2D
function TileSetAtlasSource.set_texture(texture) end

---@return Texture2D
function TileSetAtlasSource.get_texture() end

---@param margins Vector2i
function TileSetAtlasSource.set_margins(margins) end

---@return Vector2i
function TileSetAtlasSource.get_margins() end

---@param separation Vector2i
function TileSetAtlasSource.set_separation(separation) end

---@return Vector2i
function TileSetAtlasSource.get_separation() end

---@param texture_region_size Vector2i
function TileSetAtlasSource.set_texture_region_size(texture_region_size) end

---@return Vector2i
function TileSetAtlasSource.get_texture_region_size() end

---@param use_texture_padding boolean
function TileSetAtlasSource.set_use_texture_padding(use_texture_padding) end

---@return boolean
function TileSetAtlasSource.get_use_texture_padding() end

---@param atlas_coords Vector2i
---@param size Vector2i?  # Default = (1, 1)
function TileSetAtlasSource.create_tile(atlas_coords, size) end

---@param atlas_coords Vector2i
function TileSetAtlasSource.remove_tile(atlas_coords) end

---@param atlas_coords Vector2i
---@param new_atlas_coords Vector2i?  # Default = (-1, -1)
---@param new_size Vector2i?  # Default = (-1, -1)
function TileSetAtlasSource.move_tile_in_atlas(atlas_coords, new_atlas_coords, new_size) end

---@param atlas_coords Vector2i
---@return Vector2i
function TileSetAtlasSource.get_tile_size_in_atlas(atlas_coords) end

---@param atlas_coords Vector2i
---@param size Vector2i
---@param animation_columns integer
---@param animation_separation Vector2i
---@param frames_count integer
---@param ignored_tile Vector2i?  # Default = (-1, -1)
---@return boolean
function TileSetAtlasSource.has_room_for_tile(atlas_coords, size, animation_columns, animation_separation, frames_count, ignored_tile) end

---@param texture Texture2D
---@param margins Vector2i
---@param separation Vector2i
---@param texture_region_size Vector2i
---@return PackedVector2Array
function TileSetAtlasSource.get_tiles_to_be_removed_on_change(texture, margins, separation, texture_region_size) end

---@param atlas_coords Vector2i
---@return Vector2i
function TileSetAtlasSource.get_tile_at_coords(atlas_coords) end

---@return boolean
function TileSetAtlasSource.has_tiles_outside_texture() end

function TileSetAtlasSource.clear_tiles_outside_texture() end

---@param atlas_coords Vector2i
---@param frame_columns integer
function TileSetAtlasSource.set_tile_animation_columns(atlas_coords, frame_columns) end

---@param atlas_coords Vector2i
---@return integer
function TileSetAtlasSource.get_tile_animation_columns(atlas_coords) end

---@param atlas_coords Vector2i
---@param separation Vector2i
function TileSetAtlasSource.set_tile_animation_separation(atlas_coords, separation) end

---@param atlas_coords Vector2i
---@return Vector2i
function TileSetAtlasSource.get_tile_animation_separation(atlas_coords) end

---@param atlas_coords Vector2i
---@param speed number
function TileSetAtlasSource.set_tile_animation_speed(atlas_coords, speed) end

---@param atlas_coords Vector2i
---@return number
function TileSetAtlasSource.get_tile_animation_speed(atlas_coords) end

---@param atlas_coords Vector2i
---@param mode TileSetAtlasSource.TileAnimationMode
function TileSetAtlasSource.set_tile_animation_mode(atlas_coords, mode) end

---@param atlas_coords Vector2i
---@return TileSetAtlasSource.TileAnimationMode
function TileSetAtlasSource.get_tile_animation_mode(atlas_coords) end

---@param atlas_coords Vector2i
---@param frames_count integer
function TileSetAtlasSource.set_tile_animation_frames_count(atlas_coords, frames_count) end

---@param atlas_coords Vector2i
---@return integer
function TileSetAtlasSource.get_tile_animation_frames_count(atlas_coords) end

---@param atlas_coords Vector2i
---@param frame_index integer
---@param duration number
function TileSetAtlasSource.set_tile_animation_frame_duration(atlas_coords, frame_index, duration) end

---@param atlas_coords Vector2i
---@param frame_index integer
---@return number
function TileSetAtlasSource.get_tile_animation_frame_duration(atlas_coords, frame_index) end

---@param atlas_coords Vector2i
---@return number
function TileSetAtlasSource.get_tile_animation_total_duration(atlas_coords) end

---@param atlas_coords Vector2i
---@param alternative_id_override integer?  # Default = -1
---@return integer
function TileSetAtlasSource.create_alternative_tile(atlas_coords, alternative_id_override) end

---@param atlas_coords Vector2i
---@param alternative_tile integer
function TileSetAtlasSource.remove_alternative_tile(atlas_coords, alternative_tile) end

---@param atlas_coords Vector2i
---@param alternative_tile integer
---@param new_id integer
function TileSetAtlasSource.set_alternative_tile_id(atlas_coords, alternative_tile, new_id) end

---@param atlas_coords Vector2i
---@return integer
function TileSetAtlasSource.get_next_alternative_tile_id(atlas_coords) end

---@param atlas_coords Vector2i
---@param alternative_tile integer
---@return TileData
function TileSetAtlasSource.get_tile_data(atlas_coords, alternative_tile) end

---@return Vector2i
function TileSetAtlasSource.get_atlas_grid_size() end

---@param atlas_coords Vector2i
---@param frame integer?  # Default = 0
---@return Rect2i
function TileSetAtlasSource.get_tile_texture_region(atlas_coords, frame) end

---@return Texture2D
function TileSetAtlasSource.get_runtime_texture() end

---@param atlas_coords Vector2i
---@param frame integer
---@return Rect2i
function TileSetAtlasSource.get_runtime_tile_texture_region(atlas_coords, frame) end
