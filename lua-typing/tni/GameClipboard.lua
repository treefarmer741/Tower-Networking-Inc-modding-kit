---@meta _
-- Generated API for game version 0.12.1

---@class GameClipboard : Control
---@field DEFAULT_ROWS integer # Constant value: 6
---@field DEFAULT_COLS integer # Constant value: 4
---@field HEADER_BG Color # Constant value: (0.25, 0.2, 0.15, 1.0)
---@field ROW_EVEN_BG Color # Constant value: (0.18, 0.15, 0.12, 1.0)
---@field ROW_ODD_BG Color # Constant value: (0.15, 0.12, 0.1, 1.0)
---@field Y_HIDE_HEIGHT integer # Constant value: -740
---@field clipboard_notes Object
---@field main_panel Object
---@field clipboard_item_container Object
---@field main_button Object
---@field tab_container Object
---@field add_menu Object
---@field delete_confirm_dialog Object
---@field grid_container GridContainer
---@field clipboard_item_scn PackedScene
---@field spreadsheet_tab_scn PackedScene
---@field tab_menu_icon Texture2D
---@field tab_menu_icon_size integer
---@field current_context Object
---@field context_type GameClipboard.ContextType
---@field twn Tween
---@field tabs_data string
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
