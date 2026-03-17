---@meta _
-- Generated API for game version 0.10.0

---@class TileSetSource : Resource
local TileSetSource = {}

---@return integer
function TileSetSource.get_tiles_count() end

---@param index integer
---@return Vector2i
function TileSetSource.get_tile_id(index) end

---@param atlas_coords Vector2i
---@return boolean
function TileSetSource.has_tile(atlas_coords) end

---@param atlas_coords Vector2i
---@return integer
function TileSetSource.get_alternative_tiles_count(atlas_coords) end

---@param atlas_coords Vector2i
---@param index integer
---@return integer
function TileSetSource.get_alternative_tile_id(atlas_coords, index) end

---@param atlas_coords Vector2i
---@param alternative_tile integer
---@return boolean
function TileSetSource.has_alternative_tile(atlas_coords, alternative_tile) end
