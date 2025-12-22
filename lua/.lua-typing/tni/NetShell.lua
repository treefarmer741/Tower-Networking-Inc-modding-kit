---@meta _
-- Generated API for game version 0.9.1

---@class NetShell : Container
---@field foreground_routine TerminalRoutine
---@field prompt_char string
---@field recursion_tracker integer
---@field input TerminalInput
---@field preposition_defaults table<any,any>
---@field terminal_routines Array<TerminalRoutine>
---@field main_pane MainPane
---@field dynamic_container_path string
---@field dynamic_container Container
---@field minimize_button BaseButton
local NetShell = {}

function NetShell.welcome() end

function NetShell.launch() end

function NetShell.setup_default_debugger() end

---@param cmdstr string
---@param stdout Object
---@return boolean
function NetShell.exec_command(cmdstr, stdout) end

function NetShell.interrupt() end

---@param fg_routine TerminalRoutine
function NetShell.run_in_foreground(fg_routine) end

function NetShell.interrupt() end

---@param _termr TerminalRoutine
function NetShell.run_in_foreground(_termr) end

---@param stdout Object
---@param src_s Object
---@param dst_s Object
---@param tc Object
function NetShell.print_connectivity_help(stdout, src_s, dst_s, tc) end

---@param stdout Object
---@param src_s Object
---@param dst_s Object
---@param tc Object
function NetShell.print_connectivity_troubleshoot_guide(stdout, src_s, dst_s, tc) end

---@param routine_name string
---@return boolean
function NetShell.has_terminal_routine(routine_name) end

---@param routine_name string
---@return TerminalRoutine
function NetShell.get_terminal_routine(routine_name) end

function NetShell.clear_dynamic() end

---@param msg string
---@param duration integer?  # Default = 0
function NetShell.toast(msg, duration) end

---@return Object
function NetShell.get_main_pane() end

function NetShell.minimize() end

function NetShell.launch() end
