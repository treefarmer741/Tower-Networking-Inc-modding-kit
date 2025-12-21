---@meta _
-- Generated API for game version 0.9.1

---@class AliasRoutine : Node
---@field reserved_keywords Array<any>
---@field enabled boolean
---@field shell TerminalShell
local AliasRoutine = {}

---@param stdout Object
function AliasRoutine.get_usage_help(stdout) end

---@param stdout Object
---@param args Array<string>
---@return boolean
function AliasRoutine.run_with_args(stdout, args) end

---@param cmd_s string
---@return Array<any>
function AliasRoutine.get_subtoks(cmd_s) end

---@param prealias_cmd string
---@return string
function AliasRoutine.alias_expand(prealias_cmd) end

---@param stdout Object
function AliasRoutine.get_usage_help(stdout) end

function AliasRoutine.interrupt_shell() end

function AliasRoutine.minimize_shell() end

---@param _stdout TerminalOutputDisplay
---@param _args Array<string>
---@return boolean
function AliasRoutine.run_with_args(_stdout, _args) end

---@param _stdout TerminalOutputDisplay
function AliasRoutine.foreground_process(_stdout) end

---@param debugger_lgctl Object
---@param traffic_type Object
---@param request_data Object
---@return TraversalContext
function AliasRoutine.create_debugger_ctx(debugger_lgctl, traffic_type, request_data) end

---@param stdout Object
---@param debugger Object
---@param node_addr Object
---@param allow_user_nodes boolean?  # Default = false
---@return TraversalContext
function AliasRoutine.access_node_from_debugger(stdout, debugger, node_addr, allow_user_nodes) end

---@param stdout Object
---@param deb_addr string
function AliasRoutine.print_debugger_inacessible_error(stdout, deb_addr) end

---@param stdout Object
---@param deb_addr string
---@param dev_addr string
---@param device_type string?  # Default = device
function AliasRoutine.print_device_inaccessible_error(stdout, deb_addr, dev_addr, device_type) end

---@param stdout Object
---@param dev_addr string
---@param req_type Object
function AliasRoutine.print_invalid_device_type(stdout, dev_addr, req_type) end

---@param stdout Object
---@param dst_laddr Object
function AliasRoutine.print_no_dns_entry_error(stdout, dst_laddr) end

---@param context Object
---@param stdout Object
function AliasRoutine.print_traversal_context_errors(context, stdout) end

---@param stdout Object
---@param addr Object
function AliasRoutine.print_laddr_help(stdout, addr) end

---@param args Array<any>
---@param preposition string
---@return Object
function AliasRoutine.parse_preposition_syntax(args, preposition) end

---@param val Object
---@param fmtspec string
---@param colstr string
---@param termcol boolean
---@return Object
function AliasRoutine.wrap_termcol(val, fmtspec, colstr, termcol) end

---@param load_last_tick integer
---@param max_load integer
---@return string
function AliasRoutine.format_load_string(load_last_tick, max_load) end

---@param stdout Object
---@param p Program
function AliasRoutine.print_prog_load(stdout, p) end
