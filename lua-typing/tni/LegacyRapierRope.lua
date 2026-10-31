---@meta _
-- Generated API for game version 0.13.4

---@class LegacyRapierRope : RefCounted
---@field CablePieceScene10 string # Constant value: <PackedScene>
---@field CablePieceScene30 string # Constant value: <PackedScene>
---@field CablePieceScene50 string # Constant value: <PackedScene>
---@field CablePieceScene25 string # Constant value: <PackedScene>
---@field cable Cable
---@field pixels_per_cable_piece integer
---@field piece_scn PackedScene
---@field cable_pieces Object
---@field smoothing_enabled boolean
---@field smooth_positions Array<Vector2>
---@field smooth_factor number
---@field smooth_initialized boolean
local LegacyRapierRope = {}

---@return boolean
function LegacyRapierRope.uses_tether() end

---@return Object
function LegacyRapierRope.get_pieces() end

---@return boolean
function LegacyRapierRope.is_ready() end

function LegacyRapierRope.enter_tree() end

function LegacyRapierRope.ends_ready() end

function LegacyRapierRope.configure() end

function LegacyRapierRope.make() end

function LegacyRapierRope.after_make() end

function LegacyRapierRope.unmake() end

function LegacyRapierRope.on_end_picked() end

function LegacyRapierRope.tout_idle() end

function LegacyRapierRope.force_unidle() end

function LegacyRapierRope.elevator_hide() end

---@param pos_delta Vector2
function LegacyRapierRope.elevator_place(pos_delta) end

---@return PackedVector2Array
function LegacyRapierRope.get_points() end

---@param end_ Node
---@return Node2D
function LegacyRapierRope.get_label_anchor(end_) end

---@return integer
function LegacyRapierRope.get_coil_segment_count() end

---@param delta number
function LegacyRapierRope.process(delta) end

---@param canvas Cable
function LegacyRapierRope.draw(canvas) end

function LegacyRapierRope.reset_tout_enforcement() end
