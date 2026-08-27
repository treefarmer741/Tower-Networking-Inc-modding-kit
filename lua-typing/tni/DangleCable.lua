---@meta _
-- Generated API for game version 0.12.1

---@class DangleCable : Cable
---@field product_name string
---@field plug_scene_path string
---@field plug Plug
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
local DangleCable = {}

---@param parent_node Node
---@param world_anchor_pos Vector2
---@param p_plug_scene_path string
---@param p_cable_length number
---@return DangleCable
function DangleCable.build_and_add(parent_node, world_anchor_pos, p_plug_scene_path, p_cable_length) end

---@param enabled boolean
function DangleCable.set_highlight(enabled) end

---@param end_ Object
---@return Object
function DangleCable.get_other_end(end_) end

---@param newpos Vector2
function DangleCable.reposition(newpos) end

---@param pos_delta Vector2
function DangleCable.elevator_move(pos_delta) end

function DangleCable.force_cable_unidle() end

function DangleCable.remove_and_free_object() end

function DangleCable.unmake_cable() end
