---@meta _
-- Generated API for game version 0.9.1

---@class Gridmap : GridMap
---@field DIRECTIONS_V Array<any> # Constant value: [(0, -1), (1, 0), (0, 1), (-1, 0)]
---@field OPPOSITE_DIR Array<any> # Constant value: [2, 3, 0, 1]
---@field plane_size Vector2i
---@field tile_ids PackedInt32Array
local Gridmap = {}
---@enum Gridmap.ConstraintDirection
Gridmap.ConstraintDirection = {
	["POS_Z"] = 0,
	["POS_X"] = 1,
	["NEG_Z"] = 2,
	["NEG_X"] = 3,
}

---@param constraints table<any,any>
---@param rng RandomNumberGenerator?  # Default = <null>
function Gridmap.generate(constraints, rng) end
