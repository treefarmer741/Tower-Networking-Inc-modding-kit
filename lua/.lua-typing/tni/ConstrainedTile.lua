---@meta _
-- Generated API for game version 0.9.1

---@class ConstrainedTile : Node3D
---@field Z_POS Vector2i # Constant value: (0, 1)
---@field Z_NEG Vector2i # Constant value: (0, -1)
---@field X_POS Vector2i # Constant value: (1, 0)
---@field X_NEG Vector2i # Constant value: (-1, 0)
---@field Sides Array<any> # Constant value: [(0, 1), (1, 0), (0, -1), (-1, 0)]
local ConstrainedTile = {}

---@param our_var_num integer
---@param our_side Vector2i
---@param neighbor_tile ConstrainedTile
---@param neighbor_var_num integer
---@return Object
function ConstrainedTile.can_be_neighbor(our_var_num, our_side, neighbor_tile, neighbor_var_num) end

---@param all_required boolean?  # Default = false
---@return table<any,any>
function ConstrainedTile.init_constraint_data(all_required) end

---@param constraint table<any,any>
---@param side Vector2i
---@param keyword string
function ConstrainedTile.update_constraint_data(constraint, side, keyword) end

---@param var_n integer
function ConstrainedTile.apply_variant(var_n) end

function ConstrainedTile.get_variant_count() end

---@param var_n integer
function ConstrainedTile.get_variant_constraint(var_n) end
