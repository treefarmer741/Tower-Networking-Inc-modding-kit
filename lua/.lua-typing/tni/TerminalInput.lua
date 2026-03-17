---@meta _
-- Generated API for game version 0.10.0

---@class TerminalInput : CodeEdit
---@field MAX_HISTORY integer # Constant value: 10
---@field auto_input boolean
---@field command_history Array<string>
---@field mouse_is_inside boolean
---@field autocomplete_hint string
---@field cmd_samples Array<string>
local TerminalInput = {}

function TerminalInput.cls() end

---@param inp string
---@return string
function TerminalInput.get_last_word(inp) end

function TerminalInput.caret_to_end() end

---@param s string
function TerminalInput.paste_string(s) end

function TerminalInput.paste_clipboard() end

function TerminalInput.clear_autocomplete_candids() end

function TerminalInput.fill_auto() end

function TerminalInput.suggest_autocomplete() end

---@param fullcmd string
---@return Object
function TerminalInput.get_insertion_candidate(fullcmd) end
