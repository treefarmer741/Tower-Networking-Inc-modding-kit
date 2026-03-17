---@meta _
-- Generated API for game version 0.9.1

---@class Echo : Node
---@field enabled boolean
---@field shell TerminalShell
local Echo = {}

---@param stdout Object
function Echo.get_usage_help(stdout) end

---@param _stdout Object
---@param _args Array<string>
---@return boolean
function Echo.run_with_args(_stdout, _args) end

---@param stdout Object
function Echo.get_usage_help(stdout) end

function Echo.interrupt_shell() end

function Echo.minimize_shell() end

---@param _stdout TerminalOutputDisplay
---@param _args Array<string>
---@return boolean
function Echo.run_with_args(_stdout, _args) end

---@param _stdout TerminalOutputDisplay
function Echo.foreground_process(_stdout) end

---@param debugger_lgctl Object
---@param traffic_type Object
---@param request_data Object
---@return TraversalContext
function Echo.create_debugger_ctx(debugger_lgctl, traffic_type, request_data) end

---@param stdout Object
---@param debugger Object
---@param node_addr Object
---@param allow_user_nodes boolean?  # Default = false
---@return TraversalContext
function Echo.access_node_from_debugger(stdout, debugger, node_addr, allow_user_nodes) end

---@param stdout Object
---@param deb_addr string
function Echo.print_debugger_inacessible_error(stdout, deb_addr) end

---@param stdout Object
---@param deb_addr string
---@param dev_addr string
---@param device_type string?  # Default = device
function Echo.print_device_inaccessible_error(stdout, deb_addr, dev_addr, device_type) end

---@param stdout Object
---@param dev_addr string
---@param req_type Object
function Echo.print_invalid_device_type(stdout, dev_addr, req_type) end

---@param stdout Object
---@param dst_laddr Object
function Echo.print_no_dns_entry_error(stdout, dst_laddr) end

---@param context Object
---@param stdout Object
function Echo.print_traversal_context_errors(context, stdout) end

---@param stdout Object
---@param addr Object
function Echo.print_laddr_help(stdout, addr) end

---@param args Array<any>
---@param preposition string
---@return Object
function Echo.parse_preposition_syntax(args, preposition) end

---@param val Object
---@param fmtspec string
---@param colstr string
---@param termcol boolean
---@return Object
function Echo.wrap_termcol(val, fmtspec, colstr, termcol) end

---@param load_last_tick integer
---@param max_load integer
---@return string
function Echo.format_load_string(load_last_tick, max_load) end

---@param stdout Object
---@param p Program
function Echo.print_prog_load(stdout, p) end
