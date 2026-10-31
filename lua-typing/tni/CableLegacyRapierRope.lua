---@meta _
-- Generated API for game version 0.13.4

---@class CableLegacyRapierRope : RefCounted
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
local CableLegacyRapierRope = {}

---@return boolean
function CableLegacyRapierRope.uses_tether() end

---@return Object
function CableLegacyRapierRope.get_pieces() end

---@return boolean
function CableLegacyRapierRope.is_ready() end

function CableLegacyRapierRope.enter_tree() end

function CableLegacyRapierRope.ends_ready() end

function CableLegacyRapierRope.configure() end

function CableLegacyRapierRope.make() end

function CableLegacyRapierRope.after_make() end

function CableLegacyRapierRope.unmake() end

function CableLegacyRapierRope.on_end_picked() end

function CableLegacyRapierRope.tout_idle() end

function CableLegacyRapierRope.force_unidle() end

function CableLegacyRapierRope.elevator_hide() end

---@param pos_delta Vector2
function CableLegacyRapierRope.elevator_place(pos_delta) end

---@return PackedVector2Array
function CableLegacyRapierRope.get_points() end

---@param end_ Node
---@return Node2D
function CableLegacyRapierRope.get_label_anchor(end_) end

---@return integer
function CableLegacyRapierRope.get_coil_segment_count() end

---@param delta number
function CableLegacyRapierRope.process(delta) end

---@param canvas Cable
function CableLegacyRapierRope.draw(canvas) end

function CableLegacyRapierRope.reset_tout_enforcement() end
