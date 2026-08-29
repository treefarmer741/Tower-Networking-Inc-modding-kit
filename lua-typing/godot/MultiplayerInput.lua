---@meta _
-- Generated API for game version 0.12.1

---@class MultiplayerInput : MultiplayerSynchronizer
---@field dbg_console_win_scn string # Constant value: <PackedScene>
---@field mouse_position Vector2
---@field is_idle boolean
---@field motion_grid_snap boolean
---@field input_detect_node Node2D
local MultiplayerInput = {}

function MultiplayerInput.press_primary() end

function MultiplayerInput.press_primary_double() end

function MultiplayerInput.release_primary() end

---@param with_ctrl boolean?  # Default = false
function MultiplayerInput.press_t(with_ctrl) end

function MultiplayerInput.release_t() end

function MultiplayerInput.press_r() end

function MultiplayerInput.release_r() end

function MultiplayerInput.press_f() end

function MultiplayerInput.release_f() end
