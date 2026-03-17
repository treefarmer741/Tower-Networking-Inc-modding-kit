---@meta _
-- Generated API for game version 0.10.0

---@class GameClipboard : Control
---@field Y_HIDE_HEIGHT integer # Constant value: -740
---@field clipboard_notes Object
---@field main_panel Object
---@field clipboard_item_container Object
---@field main_button Object
---@field clipboard_item_scn PackedScene
---@field current_context Object
---@field context_type GameClipboard.ContextType
---@field twn Tween
---@field notepad_text string
---@field has_notepad_focus boolean
---@field clipboard_items Array<any>
local GameClipboard = {}
---@enum GameClipboard.ContextType
GameClipboard.ContextType = {
	["NONE"] = 0,
	["HWADDR"] = 1,
	["NWADDR"] = 2,
	["FQDN"] = 3,
}

---@param ctx Object
---@param typ GameClipboard.ContextType
function GameClipboard.set_clipboard_contexts(ctx, typ) end

function GameClipboard.cleanup() end

function GameClipboard.fade_out() end

function GameClipboard.fade_in() end

function GameClipboard.refresh() end

---@param a Object
---@param mode integer?  # Default = 0
function GameClipboard.register_item(a, mode) end

function GameClipboard.pull_up() end

function GameClipboard.pull_down() end
