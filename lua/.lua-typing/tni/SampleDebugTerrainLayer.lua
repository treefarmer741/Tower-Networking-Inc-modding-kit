---@meta _
-- Generated API for game version 0.9.1

---@class SampleDebugTerrainLayer : Node3D
---@field chunk_scn Object
---@field chunks table<any,any>
---@field buffering_range integer
---@field layer_seed integer
---@field size_xz Vector2
local SampleDebugTerrainLayer = {}

---@param c_coord Vector2i
function SampleDebugTerrainLayer.begin_load(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.begin_unload(c_coord) end

---@param match_state ChunkedTerrainLayer.ChunkState
---@return Array<Vector2i>
function SampleDebugTerrainLayer.get_coordinates_matching_state(match_state) end

---@param c_coord Vector2i
---@param new_state ChunkedTerrainLayer.ChunkState
function SampleDebugTerrainLayer.set_state(c_coord, new_state) end

---@param c_coord Vector2i
---@return ChunkedTerrainLayer.ChunkState
function SampleDebugTerrainLayer.get_state(c_coord) end

---@param c_coord Vector2i
---@return boolean
function SampleDebugTerrainLayer.is_loaded(c_coord) end

---@param c_coord Vector2i
---@return boolean
function SampleDebugTerrainLayer.is_loading(c_coord) end

---@param c_coord Vector2i
---@return boolean
function SampleDebugTerrainLayer.is_unloaded(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.mark_as_loading(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.mark_as_unloading(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.mark_as_loaded(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.mark_as_unloaded(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.begin_load(c_coord) end

---@param c_coord Vector2i
function SampleDebugTerrainLayer.begin_unload(c_coord) end
