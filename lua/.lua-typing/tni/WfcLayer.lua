---@meta _
-- Generated API for game version 0.9.1

---@class WfcLayer : Node3D
---@field loaded_chunks table<any,any>
---@field tracked_chunks table<any,any>
---@field scene_dir string
---@field min_collapse_per_frame integer
---@field tile_ps_map table<any,any>
---@field rng RandomNumberGenerator
---@field sample_tile_nodes Node3D
---@field wfc_data table<any,any>
---@field buffering_range integer
---@field layer_seed integer
---@field size_xz Vector2
local WfcLayer = {}

---@param c_coord Object
---@return Array<any>
function WfcLayer.get_shuffled_wfc_options(c_coord) end

---@param c_coord Vector2i
function WfcLayer.begin_load(c_coord) end

---@param c_coord Vector2i
function WfcLayer.begin_unload(c_coord) end

---@param match_state ChunkedTerrainLayer.ChunkState
---@return Array<Vector2i>
function WfcLayer.get_coordinates_matching_state(match_state) end

---@param c_coord Vector2i
---@param new_state ChunkedTerrainLayer.ChunkState
function WfcLayer.set_state(c_coord, new_state) end

---@param c_coord Vector2i
---@return ChunkedTerrainLayer.ChunkState
function WfcLayer.get_state(c_coord) end

---@param c_coord Vector2i
---@return boolean
function WfcLayer.is_loaded(c_coord) end

---@param c_coord Vector2i
---@return boolean
function WfcLayer.is_loading(c_coord) end

---@param c_coord Vector2i
---@return boolean
function WfcLayer.is_unloaded(c_coord) end

---@param c_coord Vector2i
function WfcLayer.mark_as_loading(c_coord) end

---@param c_coord Vector2i
function WfcLayer.mark_as_unloading(c_coord) end

---@param c_coord Vector2i
function WfcLayer.mark_as_loaded(c_coord) end

---@param c_coord Vector2i
function WfcLayer.mark_as_unloaded(c_coord) end

---@param c_coord Vector2i
function WfcLayer.begin_load(c_coord) end

---@param c_coord Vector2i
function WfcLayer.begin_unload(c_coord) end
