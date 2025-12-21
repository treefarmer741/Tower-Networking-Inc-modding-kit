---@meta _
-- Generated API for game version 0.9.1

---@class AStarGrid2D : RefCounted
---@field region Rect2i
---@field size Vector2i
---@field offset Vector2
---@field cell_size Vector2
---@field cell_shape integer
---@field jumping_enabled boolean
---@field default_compute_heuristic integer
---@field default_estimate_heuristic integer
---@field diagonal_mode integer
local AStarGrid2D = {}

---@param region Rect2i
function AStarGrid2D.set_region(region) end

---@return Rect2i
function AStarGrid2D.get_region() end

---@param size Vector2i
function AStarGrid2D.set_size(size) end

---@return Vector2i
function AStarGrid2D.get_size() end

---@param offset Vector2
function AStarGrid2D.set_offset(offset) end

---@return Vector2
function AStarGrid2D.get_offset() end

---@param cell_size Vector2
function AStarGrid2D.set_cell_size(cell_size) end

---@return Vector2
function AStarGrid2D.get_cell_size() end

---@param cell_shape AStarGrid2D.CellShape
function AStarGrid2D.set_cell_shape(cell_shape) end

---@return AStarGrid2D.CellShape
function AStarGrid2D.get_cell_shape() end

---@param x integer
---@param y integer
---@return boolean
function AStarGrid2D.is_in_bounds(x, y) end

---@param id Vector2i
---@return boolean
function AStarGrid2D.is_in_boundsv(id) end

---@return boolean
function AStarGrid2D.is_dirty() end

function AStarGrid2D.update() end

---@param enabled boolean
function AStarGrid2D.set_jumping_enabled(enabled) end

---@return boolean
function AStarGrid2D.is_jumping_enabled() end

---@param mode AStarGrid2D.DiagonalMode
function AStarGrid2D.set_diagonal_mode(mode) end

---@return AStarGrid2D.DiagonalMode
function AStarGrid2D.get_diagonal_mode() end

---@param heuristic AStarGrid2D.Heuristic
function AStarGrid2D.set_default_compute_heuristic(heuristic) end

---@return AStarGrid2D.Heuristic
function AStarGrid2D.get_default_compute_heuristic() end

---@param heuristic AStarGrid2D.Heuristic
function AStarGrid2D.set_default_estimate_heuristic(heuristic) end

---@return AStarGrid2D.Heuristic
function AStarGrid2D.get_default_estimate_heuristic() end

---@param id Vector2i
---@param solid boolean?  # Default = true
function AStarGrid2D.set_point_solid(id, solid) end

---@param id Vector2i
---@return boolean
function AStarGrid2D.is_point_solid(id) end

---@param id Vector2i
---@param weight_scale number
function AStarGrid2D.set_point_weight_scale(id, weight_scale) end

---@param id Vector2i
---@return number
function AStarGrid2D.get_point_weight_scale(id) end

---@param region Rect2i
---@param solid boolean?  # Default = true
function AStarGrid2D.fill_solid_region(region, solid) end

---@param region Rect2i
---@param weight_scale number
function AStarGrid2D.fill_weight_scale_region(region, weight_scale) end

function AStarGrid2D.clear() end

---@param id Vector2i
---@return Vector2
function AStarGrid2D.get_point_position(id) end

---@param region Rect2i
---@return Array<Dictionary>
function AStarGrid2D.get_point_data_in_region(region) end

---@param from_id Vector2i
---@param to_id Vector2i
---@param allow_partial_path boolean?  # Default = false
---@return PackedVector2Array
function AStarGrid2D.get_point_path(from_id, to_id, allow_partial_path) end

---@param from_id Vector2i
---@param to_id Vector2i
---@param allow_partial_path boolean?  # Default = false
---@return Array<Vector2i>
function AStarGrid2D.get_id_path(from_id, to_id, allow_partial_path) end
