---@meta _
-- Generated API for game version 0.13.4

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
local DangleCable = {}

---@param parent_node Node
---@param world_anchor_pos Vector2
---@param p_plug_scene_path string
---@param p_cable_length number
---@return DangleCable
function DangleCable.build_and_add(parent_node, world_anchor_pos, p_plug_scene_path, p_cable_length) end

---@param enabled boolean
function DangleCable.set_highlight(enabled) end

---@return Array<any>
function DangleCable.export_shape() end

---@param packed Object
function DangleCable.import_shape(packed) end

---@param parent Node
---@param a Vector2
---@param b Vector2
function DangleCable.spawn_into(parent, a, b) end

function DangleCable.remake() end

---@param end_ Object
---@return Object
function DangleCable.get_other_end(end_) end

---@return boolean
function DangleCable.is_rope_ready() end

---@return PackedVector2Array
function DangleCable.get_rope_points() end

---@param end_ Object
---@return Node2D
function DangleCable.get_label_anchor(end_) end

---@return integer
function DangleCable.get_coil_segment_count() end

---@param end_ Object
function DangleCable.on_end_moved(end_) end

---@param _end Object
---@return boolean
function DangleCable.tracks_loose_end(_end) end

---@param end_ Plug
function DangleCable.on_loose_end_tick(end_) end

---@param newpos Vector2
function DangleCable.reposition(newpos) end

---@param pos_delta Vector2
function DangleCable.elevator_move(pos_delta) end

function DangleCable.force_cable_unidle() end

function DangleCable.remove_and_free_object() end

function DangleCable.unmake_cable() end
