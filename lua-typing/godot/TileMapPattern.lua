---@meta _
-- Generated API for game version 0.10.0

---@class TileMapPattern : Resource
local TileMapPattern = {}

---@param coords Vector2i
---@param source_id integer?  # Default = -1
---@param atlas_coords Vector2i?  # Default = (-1, -1)
---@param alternative_tile integer?  # Default = -1
function TileMapPattern.set_cell(coords, source_id, atlas_coords, alternative_tile) end

---@param coords Vector2i
---@return boolean
function TileMapPattern.has_cell(coords) end

---@param coords Vector2i
---@param update_size boolean
function TileMapPattern.remove_cell(coords, update_size) end

---@param coords Vector2i
---@return integer
function TileMapPattern.get_cell_source_id(coords) end

---@param coords Vector2i
---@return Vector2i
function TileMapPattern.get_cell_atlas_coords(coords) end

---@param coords Vector2i
---@return integer
function TileMapPattern.get_cell_alternative_tile(coords) end

---@return Array<Vector2i>
function TileMapPattern.get_used_cells() end

---@return Vector2i
function TileMapPattern.get_size() end

---@param size Vector2i
function TileMapPattern.set_size(size) end

---@return boolean
function TileMapPattern.is_empty() end
