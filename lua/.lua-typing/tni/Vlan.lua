---@meta _
-- Generated API for game version 0.9.1

---@class Vlan : Node
---@field enabled boolean
---@field shell TerminalShell
local Vlan = {}

---@param stdout Object
function Vlan.get_usage_help(stdout) end

---@param stdout Object
---@param args Array<string>
---@return boolean
function Vlan.run_with_args(stdout, args) end

---@param stdout Object
function Vlan.get_usage_help(stdout) end

function Vlan.interrupt_shell() end

function Vlan.minimize_shell() end

---@param _stdout TerminalOutputDisplay
---@param _args Array<string>
---@return boolean
function Vlan.run_with_args(_stdout, _args) end

---@param _stdout TerminalOutputDisplay
function Vlan.foreground_process(_stdout) end

---@param debugger_lgctl Object
---@param traffic_type Object
---@param request_data Object
---@return TraversalContext
function Vlan.create_debugger_ctx(debugger_lgctl, traffic_type, request_data) end

---@param stdout Object
---@param debugger Object
---@param node_addr Object
---@param allow_user_nodes boolean?  # Default = false
---@return TraversalContext
function Vlan.access_node_from_debugger(stdout, debugger, node_addr, allow_user_nodes) end

---@param stdout Object
---@param deb_addr string
function Vlan.print_debugger_inacessible_error(stdout, deb_addr) end

---@param stdout Object
---@param deb_addr string
---@param dev_addr string
---@param device_type string?  # Default = device
function Vlan.print_device_inaccessible_error(stdout, deb_addr, dev_addr, device_type) end

---@param stdout Object
---@param dev_addr string
---@param req_type Object
function Vlan.print_invalid_device_type(stdout, dev_addr, req_type) end

---@param stdout Object
---@param dst_laddr Object
function Vlan.print_no_dns_entry_error(stdout, dst_laddr) end

---@param context Object
---@param stdout Object
function Vlan.print_traversal_context_errors(context, stdout) end

---@param stdout Object
---@param addr Object
function Vlan.print_laddr_help(stdout, addr) end

---@param args Array<any>
---@param preposition string
---@return Object
function Vlan.parse_preposition_syntax(args, preposition) end

---@param val Object
---@param fmtspec string
---@param colstr string
---@param termcol boolean
---@return Object
function Vlan.wrap_termcol(val, fmtspec, colstr, termcol) end

---@param load_last_tick integer
---@param max_load integer
---@return string
function Vlan.format_load_string(load_last_tick, max_load) end

---@param stdout Object
---@param p Program
function Vlan.print_prog_load(stdout, p) end
