---@meta _
-- Generated API for game version 0.12.1

---@class MultiplayerMouse : Node2D
---@field HIGH_BLUE_COLARR Array<any> # Constant value: [(1.0, 0.0, 0.0, 1.0), (1.0, 0.6, 0.0, 1.0), (1.0, 1.0, 0.0, 1.0), (0.8, 1.0, 0.2, 1.0), (0.6, 1.0, 0.2, 1.0), (0.4, 1.0, 0.2, 1.0), (0.2, 0.8, 0.2, 1.0), (0.0, 1.0, 0.0, 1.0), (0.0, 1.0, 0.6, 1.0), (0.0, 1.0, 0.8, 1.0), (0.0, 0.8, 0.9333, 1.0)]
---@field PATCH_CABLE_MAX_LENGTH number # Constant value: 1000.0
---@field PATCH_CABLE_WARN_LENGTH number # Constant value: 700.0
---@field multi_double_pick Array<any>
---@field curr_picked_original_pos Vector2
---@field curr_hover Node2D
---@field curr_picked Object
---@field player_name string
---@field camera Camera2D
---@field hovertxt RichTextLabel
---@field rulerlbl Label
---@field grid_ov Node2D
---@field thuds_audiostreams Node2D
---@field cutting_clip AudioStreamPlayer2D
---@field mpinput MultiplayerInput
---@field peer_id integer
---@field curr_drag Object
---@field primary_double_held boolean
---@field cable_tag_content string
---@field cable_tag_color Color
---@field draw_ruler boolean
---@field ruler_start Vector2
local MultiplayerMouse = {}
---@enum MultiplayerMouse.SpoolAffixState
MultiplayerMouse.SpoolAffixState = {
	["IDLE"] = 0,
	["WAITING_FOR_ENTRY"] = 1,
	["IN_TRAY"] = 2,
	["OUT_TRAY"] = 3,
	["STARTED_FROM_PUNCHDOWN"] = 4,
}

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
