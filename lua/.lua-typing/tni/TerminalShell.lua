---@meta _
-- Generated API for game version 0.9.1

---@class TerminalShell : Container
---@field input TerminalInput
---@field preposition_defaults table<any,any>
---@field terminal_routines Array<TerminalRoutine>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local TerminalShell = {}

function TerminalShell.interrupt() end

---@param _termr TerminalRoutine
function TerminalShell.run_in_foreground(_termr) end

---@param stdout Object
---@param src_s Object
---@param dst_s Object
---@param tc Object
function TerminalShell.print_connectivity_help(stdout, src_s, dst_s, tc) end

---@param stdout Object
---@param src_s Object
---@param dst_s Object
---@param tc Object
function TerminalShell.print_connectivity_troubleshoot_guide(stdout, src_s, dst_s, tc) end

---@param routine_name string
---@return boolean
function TerminalShell.has_terminal_routine(routine_name) end

---@param routine_name string
---@return TerminalRoutine
function TerminalShell.get_terminal_routine(routine_name) end

function TerminalShell.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function TerminalShell.toast(msg, duration) end

---@return Object
function TerminalShell.get_main_pane() end

function TerminalShell.minimize() end

function TerminalShell.launch() end
