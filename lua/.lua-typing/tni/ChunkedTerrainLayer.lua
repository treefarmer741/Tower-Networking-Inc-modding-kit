---@meta _
-- Generated API for game version 0.9.1

---@class ChunkedTerrainLayer : Node3D
---@field buffering_range integer
---@field layer_seed integer
---@field size_xz Vector2
local ChunkedTerrainLayer = {}
---@enum ChunkedTerrainLayer.ChunkState
ChunkedTerrainLayer.ChunkState = {
	["UNLOADED"] = 0,
	["LOADED"] = 1,
	["LOADING"] = 2,
	["UNLOADING"] = 3,
}

---@param match_state ChunkedTerrainLayer.ChunkState
---@return Array<Vector2i>
function ChunkedTerrainLayer.get_coordinates_matching_state(match_state) end

---@param c_coord Vector2i
---@param new_state ChunkedTerrainLayer.ChunkState
function ChunkedTerrainLayer.set_state(c_coord, new_state) end

---@param c_coord Vector2i
---@return ChunkedTerrainLayer.ChunkState
function ChunkedTerrainLayer.get_state(c_coord) end

---@param c_coord Vector2i
---@return boolean
function ChunkedTerrainLayer.is_loaded(c_coord) end

---@param c_coord Vector2i
---@return boolean
function ChunkedTerrainLayer.is_loading(c_coord) end

---@param c_coord Vector2i
---@return boolean
function ChunkedTerrainLayer.is_unloaded(c_coord) end

---@param c_coord Vector2i
function ChunkedTerrainLayer.mark_as_loading(c_coord) end

---@param c_coord Vector2i
function ChunkedTerrainLayer.mark_as_unloading(c_coord) end

---@param c_coord Vector2i
function ChunkedTerrainLayer.mark_as_loaded(c_coord) end

---@param c_coord Vector2i
function ChunkedTerrainLayer.mark_as_unloaded(c_coord) end

---@param c_coord Vector2i
function ChunkedTerrainLayer.begin_load(c_coord) end

---@param c_coord Vector2i
function ChunkedTerrainLayer.begin_unload(c_coord) end
