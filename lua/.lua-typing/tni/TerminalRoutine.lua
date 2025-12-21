---@meta _
-- Generated API for game version 0.9.1

---@class TerminalRoutine : Node
---@field INVALID_CMD_MAN_HELP0 string # Constant value: invalid command, type '{man}' for help.
---@field LOAD_COLOR_LEVELS Array<any> # Constant value: ["green", "yellow", "red"]
---@field enabled boolean
---@field shell TerminalShell
local TerminalRoutine = {}

---@param stdout Object
function TerminalRoutine.get_usage_help(stdout) end

function TerminalRoutine.interrupt_shell() end

function TerminalRoutine.minimize_shell() end

---@param _stdout TerminalOutputDisplay
---@param _args Array<string>
---@return boolean
function TerminalRoutine.run_with_args(_stdout, _args) end

---@param _stdout TerminalOutputDisplay
function TerminalRoutine.foreground_process(_stdout) end

---@param debugger_lgctl Object
---@param traffic_type Object
---@param request_data Object
---@return TraversalContext
function TerminalRoutine.create_debugger_ctx(debugger_lgctl, traffic_type, request_data) end

---@param stdout Object
---@param debugger Object
---@param node_addr Object
---@param allow_user_nodes boolean?  # Default = false
---@return TraversalContext
function TerminalRoutine.access_node_from_debugger(stdout, debugger, node_addr, allow_user_nodes) end

---@param stdout Object
---@param deb_addr string
function TerminalRoutine.print_debugger_inacessible_error(stdout, deb_addr) end

---@param stdout Object
---@param deb_addr string
---@param dev_addr string
---@param device_type string?  # Default = device
function TerminalRoutine.print_device_inaccessible_error(stdout, deb_addr, dev_addr, device_type) end

---@param stdout Object
---@param dev_addr string
---@param req_type Object
function TerminalRoutine.print_invalid_device_type(stdout, dev_addr, req_type) end

---@param stdout Object
---@param dst_laddr Object
function TerminalRoutine.print_no_dns_entry_error(stdout, dst_laddr) end

---@param context Object
---@param stdout Object
function TerminalRoutine.print_traversal_context_errors(context, stdout) end

---@param stdout Object
---@param addr Object
function TerminalRoutine.print_laddr_help(stdout, addr) end

---@param args Array<any>
---@param preposition string
---@return Object
function TerminalRoutine.parse_preposition_syntax(args, preposition) end

---@param val Object
---@param fmtspec string
---@param colstr string
---@param termcol boolean
---@return Object
function TerminalRoutine.wrap_termcol(val, fmtspec, colstr, termcol) end

---@param load_last_tick integer
---@param max_load integer
---@return string
function TerminalRoutine.format_load_string(load_last_tick, max_load) end

---@param stdout Object
---@param p Program
function TerminalRoutine.print_prog_load(stdout, p) end
