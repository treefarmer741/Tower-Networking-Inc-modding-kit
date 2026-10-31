---@meta _
-- Generated API for game version 0.13.4

---@class Cable : Node2D
---@field ZINDEX integer # Constant value: 1000
---@field LEGACY_ROPES_SETTING string # Constant value: application/cables/legacy_rapier_ropes
---@field VerletRope Object # Constant value: (res://scenes/components/cables/rope/verlet_rope.gd):<GDScript#-9223369671586014828>
---@field LegacyRapierRope Object # Constant value: (res://scenes/components/cables/legacy/legacy_rapier_rope.gd):<GDScript#-9223369671317579370>
---@field TOUT_TICK_TOLERANCE integer # Constant value: 10
---@field cable_highlight_effect Color # Constant value: (2.454, 2.454, 2.454, 1.0)
---@field DELAY_TIMER_FLT number # Constant value: 0.3
---@field LINVELT number # Constant value: 5.0
---@field INITIAL_SETUP_GRACE_MS integer # Constant value: 5000
---@field TETHER_RATE number # Constant value: 12.0
---@field TETHER_TIP_PX number # Constant value: 1.0
---@field with_mouse_stretch_factor Object
---@field without_mouse_stretch_factor Object
---@field cable_width number
---@field cable_color Color
---@field cable_length number
---@field blacklist_nodes_as_ends Array<any>
---@field save_cable_length boolean
---@field end_a Node2D
---@field end_b Node2D
---@field rope Object
---@field cable_idle Timer
---@field initial_setup_grace Timer
---@field delay_timer Timer
---@field cable_pieces Object
---@field pixels_per_cable_piece integer
---@field smoothing_enabled boolean
---@field mvtwn Tween
local Cable = {}

---@param enabled boolean
function Cable.set_highlight(enabled) end

---@return Array<any>
function Cable.export_shape() end

---@param packed Object
function Cable.import_shape(packed) end

---@param parent Node
---@param a Vector2
---@param b Vector2
function Cable.spawn_into(parent, a, b) end

function Cable.remake() end

---@param end_ Object
---@return Object
function Cable.get_other_end(end_) end

---@return boolean
function Cable.is_rope_ready() end

---@return PackedVector2Array
function Cable.get_rope_points() end

---@param end_ Object
---@return Node2D
function Cable.get_label_anchor(end_) end

---@return integer
function Cable.get_coil_segment_count() end

---@param end_ Object
function Cable.on_end_moved(end_) end

---@param _end Object
---@return boolean
function Cable.tracks_loose_end(_end) end

---@param end_ Plug
function Cable.on_loose_end_tick(end_) end

---@param newpos Vector2
function Cable.reposition(newpos) end

---@param pos_delta Vector2
function Cable.elevator_move(pos_delta) end

function Cable.force_cable_unidle() end

function Cable.remove_and_free_object() end

function Cable.unmake_cable() end
