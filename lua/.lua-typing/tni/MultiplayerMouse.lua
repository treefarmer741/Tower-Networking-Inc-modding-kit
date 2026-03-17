---@meta _
-- Generated API for game version 0.10.0

---@class MultiplayerMouse : Node2D
---@field HIGH_BLUE_COLARR Array<any> # Constant value: [(1.0, 0.0, 0.0, 1.0), (1.0, 0.6, 0.0, 1.0), (1.0, 1.0, 0.0, 1.0), (0.8, 1.0, 0.2, 1.0), (0.6, 1.0, 0.2, 1.0), (0.4, 1.0, 0.2, 1.0), (0.2, 0.8, 0.2, 1.0), (0.0, 1.0, 0.0, 1.0), (0.0, 1.0, 0.6, 1.0), (0.0, 1.0, 0.8, 1.0), (0.0, 0.8, 0.9333, 1.0)]
---@field multi_double_pick Array<any>
---@field curr_picked_original_pos Vector2
---@field curr_hover Node2D
---@field curr_picked Object
---@field player_name string
---@field camera Camera2D
---@field hovertxt RichTextLabel
---@field rulerlbl Label
---@field grid_ov Node2D
---@field mpinput MultiplayerInput
---@field peer_id integer
---@field curr_drag Object
---@field primary_double_held boolean
---@field draw_ruler boolean
---@field ruler_start Vector2
local MultiplayerMouse = {}

---@param np string
function MultiplayerMouse.click_selection(np) end

---@param np string
function MultiplayerMouse.pick_selection(np) end

function MultiplayerMouse.drop_curr_picked() end

function MultiplayerMouse.show_redcross() end

function MultiplayerMouse.hide_redcross() end

---@return Object
function MultiplayerMouse.cast_and_detect_from_self_radius() end

---@return Object
function MultiplayerMouse.cast_and_detect_from_self_position() end

---@param msg string
---@param fontcol Color
function MultiplayerMouse.show_hint(msg, fontcol) end
