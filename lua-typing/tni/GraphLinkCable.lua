---@meta _
-- Generated API for game version 0.13.4

---@class GraphLinkCable : Cable
---@field MAX_PRICE integer # Constant value: 1000000
---@field product_name string
---@field description string
---@field price integer
---@field alternate_listing_image Texture2D
---@field recycle_price_factor number
---@field recycle_price integer
---@field color_variant Color
---@field initial_end_a_plugin_socket Socket
---@field initial_end_b_plugin_socket Socket
---@field cable_rendered_description string
---@field cable_preset_length number
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
local GraphLinkCable = {}

---@param enabled boolean
function GraphLinkCable.set_highlight(enabled) end

---@return Array<any>
function GraphLinkCable.export_shape() end

---@param packed Object
function GraphLinkCable.import_shape(packed) end

---@param parent Node
---@param a Vector2
---@param b Vector2
function GraphLinkCable.spawn_into(parent, a, b) end

function GraphLinkCable.remake() end

---@param end_ Object
---@return Object
function GraphLinkCable.get_other_end(end_) end

---@return boolean
function GraphLinkCable.is_rope_ready() end

---@return PackedVector2Array
function GraphLinkCable.get_rope_points() end

---@param end_ Object
---@return Node2D
function GraphLinkCable.get_label_anchor(end_) end

---@return integer
function GraphLinkCable.get_coil_segment_count() end

---@param end_ Object
function GraphLinkCable.on_end_moved(end_) end

---@param _end Object
---@return boolean
function GraphLinkCable.tracks_loose_end(_end) end

---@param end_ Plug
function GraphLinkCable.on_loose_end_tick(end_) end

---@param newpos Vector2
function GraphLinkCable.reposition(newpos) end

---@param pos_delta Vector2
function GraphLinkCable.elevator_move(pos_delta) end

function GraphLinkCable.force_cable_unidle() end

function GraphLinkCable.remove_and_free_object() end

function GraphLinkCable.unmake_cable() end
