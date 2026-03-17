---@meta _
-- Generated API for game version 0.10.0

---@class RandomLocationPiece : Node2D
---@field piece_dir string
---@field n_users integer
---@field refborder Object
local RandomLocationPiece = {}

---@return Array<any>
function RandomLocationPiece.get_possible_upn() end

---@return LocationPiece
function RandomLocationPiece.choose_piece() end
