---@meta _
-- Generated API for game version 0.10.0

---@class Cable : Node2D
---@field ZINDEX integer # Constant value: 1000
---@field TOUT_TICK_TOLERANCE integer # Constant value: 10
---@field CablePieceScene10 Object # Constant value: <PackedScene#-9223369196774011614>
---@field CablePieceScene30 Object # Constant value: <PackedScene#-9223369196572685019>
---@field CablePieceScene50 Object # Constant value: <PackedScene#-9223369196371358424>
---@field CablePieceScene25 Object # Constant value: <PackedScene#-9223369196170031829>
---@field DELAY_TIMER_FLT number # Constant value: 0.3
---@field LINVELT number # Constant value: 5.0
---@field with_mouse_stretch_factor Object
---@field without_mouse_stretch_factor Object
---@field cable_width number
---@field cable_color Color
---@field cable_length number
---@field blacklist_nodes_as_ends Array<any>
---@field pixels_per_cable_piece integer
---@field piece_scn PackedScene
---@field save_cable_length boolean
---@field end_a Node2D
---@field end_b Node2D
---@field cable_pieces Object
---@field cable_idle Timer
---@field initial_setup_grace Timer
---@field delay_timer Timer
---@field smoothing_enabled boolean
---@field mvtwn Tween
---@field smooth_positions Array<Vector2>
---@field smooth_factor number
---@field smooth_initialized boolean
local Cable = {}

---@param end_ Object
---@return Object
function Cable.get_other_end(end_) end

---@param newpos Vector2
function Cable.reposition(newpos) end

---@param pos_delta Vector2
function Cable.elevator_move(pos_delta) end

function Cable.force_cable_unidle() end

function Cable.remove_and_free_object() end

function Cable.unmake_cable() end
