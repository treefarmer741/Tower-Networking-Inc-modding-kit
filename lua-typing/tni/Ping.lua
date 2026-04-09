---@meta _
-- Generated API for game version 0.10.11

---@class Ping : TerminalRoutine
---@field enabled boolean
---@field shell TerminalShell
---@field wide_output_shell boolean
local Ping = {}

---@param stdout Object
function Ping.get_usage_help(stdout) end

---@param stdout Object
---@param args Array<string>
---@return boolean
function Ping.run_with_args(stdout, args) end

---@param stdout Object
function Ping.get_usage_help(stdout) end

function Ping.interrupt_shell() end

function Ping.minimize_shell() end

---@param _stdout TerminalOutputDisplay
---@param _args Array<string>
---@return boolean
function Ping.run_with_args(_stdout, _args) end

---@param _stdout TerminalOutputDisplay
function Ping.foreground_process(_stdout) end

---@param stdout Object
---@param deb_addr string
function Ping.print_debugger_inacessible_error(stdout, deb_addr) end

---@param stdout Object
---@param deb_addr string
---@param dev_addr string
---@param device_type string?  # Default = device
function Ping.print_device_inaccessible_error(stdout, deb_addr, dev_addr, device_type) end

---@param stdout Object
---@param dev_addr string
---@param req_type Object
function Ping.print_invalid_device_type(stdout, dev_addr, req_type) end

---@param stdout Object
---@param dst_laddr Object
function Ping.print_no_dns_entry_error(stdout, dst_laddr) end

---@param stdout Object
---@param d_addr Object
function Ping.print_no_dns_server_error(stdout, d_addr) end

---@param context Object
---@param stdout Object
function Ping.print_traversal_context_errors(context, stdout) end

---@param stdout Object
---@param addr Object
function Ping.print_laddr_help(stdout, addr) end

---@param args Array<any>
---@param preposition string
---@return Object
function Ping.parse_preposition_syntax(args, preposition) end

---@param val Object
---@param fmtspec string
---@param colstr string
---@param termcol boolean
---@return Object
function Ping.wrap_termcol(val, fmtspec, colstr, termcol) end

---@param load_last_tick integer
---@param max_load integer
---@return string
function Ping.format_load_string(load_last_tick, max_load) end

---@param stdout Object
---@param p Program
function Ping.print_prog_load(stdout, p) end

---@param stdout Object
---@param async_send_resultd table<any,any>
function Ping.print_send_packet_error(stdout, async_send_resultd) end

---@return integer
function Ping.get_debugger_pkt_weight() end

---@param stdout Object
---@param debugger DeviceUnit
---@param node_addr string
---@param allow_user_nodes boolean?  # Default = false
---@param rc_tc_type string?  # Default = tcp/23
---@param rc_tc_rd string?  # Default = debugger access
---@param matcher_callback Object?  # Default = <null>
---@param clear_scrn_after_event boolean?  # Default = false
---@return Object
function Ping.send_remote_command(stdout, debugger, node_addr, allow_user_nodes, rc_tc_type, rc_tc_rd, matcher_callback, clear_scrn_after_event) end
