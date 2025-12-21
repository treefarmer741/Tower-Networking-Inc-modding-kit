---@meta _
-- Generated API for game version 0.9.1

---@class GraphLinkCable : Node2D
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
local GraphLinkCable = {}

---@param end_ Object
---@return Object
function GraphLinkCable.get_other_end(end_) end

---@param newpos Vector2
function GraphLinkCable.reposition(newpos) end

---@param pos_delta Vector2
function GraphLinkCable.elevator_move(pos_delta) end

function GraphLinkCable.force_cable_unidle() end

function GraphLinkCable.remove_and_free_object() end

function GraphLinkCable.unmake_cable() end
