---@meta _
-- Generated API for game version 0.9.1

---@class LogicController : Node
---@field default_tick_period number
---@field auto_cycle_enabled boolean
---@field installed_cpu integer
---@field installed_mem integer
---@field installed_sto integer
---@field installed_nbw integer
---@field power_load integer
---@field infinite_power_mode boolean
---@field power_controller PowerController
---@field force_autoconfig boolean
---@field skip_autoconfig_cpu boolean
---@field allow_storage_mods boolean
---@field allow_process_mods boolean
---@field initialize_peripherals Array<any>
---@field auto_configured_programs Array<any>
---@field use_stack table<any,any>
---@field peripherals Array<any>
---@field scheduler_idx integer
---@field wasted_cycles integer
---@field traversal_history Array<any>
---@field traversal_history_last_tick Array<any>
---@field current_load integer
---@field up_timestamp integer
---@field networkctl NetworkControlModule
---@field routectl RouteControlModule
---@field firewallctl FirewallControlModule
---@field dhcpctl DHCPControlModule
---@field filesysctl FileSystemControlModule
---@field vlanctl VLANControlModule
---@field packetctl PacketControlModule
---@field tick_timer Timer
---@field power Power
---@field mpsync MultiplayerSynchronizer
---@field mpsy2 MultiplayerSynchronizer
---@field print_name string
---@field is_virtual boolean
---@field vm_host_controller LogicController
---@field node2d_parent Node2D
---@field hardware_address string
---@field network_address string
---@field is_remote_debugger boolean
---@field is_network_switch boolean
---@field is_network_router boolean
---@field is_hardware_nlb boolean
---@field is_network_lb boolean
---@field is_ha_enabled boolean
---@field is_vlan_enabled boolean
---@field is_dns_server boolean
---@field is_dhcp_server boolean
---@field is_network_tap boolean
---@field is_network_filter boolean
---@field installed_programs Array<Program>
---@field running_programs Array<Program>
---@field live_programs Array<Program>
---@field network_ports Array<LogicControllerSocket>
---@field os_running boolean
---@field free_storage integer
---@field total_storage_capacity integer
---@field extended_storage integer
---@field used_storage integer
---@field free_memory integer
---@field used_memory integer
---@field cpu_load integer
---@field wasted_nbw integer
---@field free_nbw integer
---@field nbw_wasted_last_tick integer
---@field nbw_used_last_tick integer
---@field traversal_history_nbw integer
---@field traversal_history_last_tick_nbw integer
---@field pcap_history_marker integer
---@field pmodset Array<any>
---@field nw_or_hw_addr string
---@field system_messages table<any,any>
---@field is_user_host boolean
---@field is_link_host boolean
---@field is_device_host boolean
---@field installed_program_sfps Array<any>
---@field lbcounter integer
---@field sorted_packet_processors Array<any>
---@field ports Array<any>
---@field neighbours Array<any>
---@field reversed_ports Array<any>
local LogicController = {}
---@enum LogicController.TraversalHistory
LogicController.TraversalHistory = {
	["SRC_NODE_PATH"] = 0,
	["PORT_PATH"] = 1,
	["TRAFFIC_CLASS"] = 2,
	["TRAFFIC_WEIGHT"] = 3,
	["REQUEST_DATA"] = 4,
	["ADDITIONAL_FLAGS"] = 5,
}
---@enum LogicController.TableType
LogicController.TableType = {
	["ROUTING"] = 0,
	["FIREWALL"] = 1,
}

---@param _time_mult_delta number
function LogicController.time_mult_updated(_time_mult_delta) end

function LogicController.wipe_all_data() end

function LogicController.reboot_os() end

function LogicController.autoconfigure_specs_based_on_installs() end

---@param prg_path string
---@param bypass_restrictions boolean?  # Default = false
---@param modify_cpu_abs integer?  # Default = -1
---@param modify_mem_abs integer?  # Default = -1
---@param modify_sto_abs integer?  # Default = -1
---@param modify_rel_nm string?  # Default = 
---@param extra_install_opts Object?  # Default = <null>
---@return Array<any>
function LogicController.install_program(prg_path, bypass_restrictions, modify_cpu_abs, modify_mem_abs, modify_sto_abs, modify_rel_nm, extra_install_opts) end

---@param release_name string
---@return Program
function LogicController.get_installed_program(release_name) end

---@param release_name string
---@param bypass_restrictions boolean?  # Default = false
---@return Object
function LogicController.run_installed_program(release_name, bypass_restrictions) end

---@param release_name string
---@param bypass_restrictions boolean?  # Default = false
---@return Object
function LogicController.halt_running_process(release_name, bypass_restrictions) end

---@param prog_path string
function LogicController.remove_program(prog_path) end

---@param release_name string
---@param bypass_restrictions boolean?  # Default = false
---@return Object
function LogicController.uninstall_program(release_name, bypass_restrictions) end

function LogicController.start_all_programs() end

---@param per Object
---@param install_callback boolean?  # Default = true
function LogicController.add_peripheral(per, install_callback) end

---@param per Object
function LogicController.remove_peripheral(per) end

function LogicController.reset() end

---@param new_nbw_used integer
---@param new_nbw_wasted integer
function LogicController.client_update_last_tick_usage(new_nbw_used, new_nbw_wasted) end

---@param reset_schidx boolean?  # Default = false
function LogicController.refresh_all(reset_schidx) end

function LogicController.clear_port_stats() end

function LogicController.boot_os() end

function LogicController.shutdown_os() end

function LogicController.run_cycle() end

---@param _context Object
---@param _from_node Object
---@param _from_port Object
---@param _current_depth Object
---@return boolean
function LogicController.default_traversal_rule(_context, _from_node, _from_port, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
function LogicController.network_traversal(traversal_ctx, traversal_callback) end

---@param context TraversalContext
---@param via_port LogicControllerSocket
function LogicController.record_traversal_history(context, via_port) end

---@return Object
function LogicController.debug_monitor_callback() end

---@param re string
---@param tt LogicController.TableType
function LogicController.remove_table_entry(re, tt) end

---@param tt LogicController.TableType
function LogicController.clear_table(tt) end

---@param traffic_class Object
---@param request_data Object?  # Default = -
---@return TraversalContext
function LogicController.init_traversal_ctx(traffic_class, request_data) end

---@param hwaddr string
---@return boolean
function LogicController.has_hardware_address(hwaddr) end

---@param nwaddr string
---@return boolean
function LogicController.has_network_address(nwaddr) end

---@param ctlmod Program.ControllerModifiers
---@return boolean
function LogicController.test_modifier_presence(ctlmod) end

---@param addr string
---@return boolean
function LogicController.has_logical_address(addr) end

---@param port_id_or_num Object
---@return boolean
function LogicController.has_network_port_id(port_id_or_num) end

---@param new_use string
---@param count integer?  # Default = 1
function LogicController.push_to_use_stack(new_use, count) end

---@param obj Object
---@return Object
function LogicController.is_friend_class(obj) end

---@param msg string
function LogicController.show_hint(msg) end

function LogicController.restore_default_programs() end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
function LogicController.dfs_port_traversal(traversal_ctx, traversal_callback) end

---@param socket Socket
function LogicController.add_port(socket) end

---@param socket Object
function LogicController.remove_port(socket) end

function LogicController.update_pkt_processors() end

---@param obj Object
---@return Object
function LogicController.is_friend_class(obj) end

---@param socket Socket
function LogicController.add_port(socket) end

---@param socket Socket
function LogicController.remove_port(socket) end

---@param port Socket
---@param nc GraphController
function LogicController.add_neighbour(port, nc) end

---@param port Socket
function LogicController.remove_neighbours_on_port(port) end

---@param via Socket
---@return GraphController
function LogicController.get_neighbour(via) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_depth Object
---@return boolean
function LogicController.default_port_traversal_rule(_context, _node, _port, _current_depth) end

---@param _context Object
---@param _node Object
---@param _port Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function LogicController.default_port_traversal_callback(_context, _node, _port, _current_index, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
---@param traversal_rule Object?  # Default = <null>
function LogicController.bfs_port_traversal(traversal_ctx, traversal_callback, traversal_rule) end

---@param _context Object
---@param _from_node Object
---@param _to_node Object
---@param _current_depth Object
---@return boolean
function LogicController.default_traversal_rule(_context, _from_node, _to_node, _current_depth) end

---@param _context Object
---@param _node Object
---@param _current_index Object
---@param _current_depth Object
---@return GraphController.Traversal
function LogicController.default_traversal_callback(_context, _node, _current_index, _current_depth) end

---@param traversal_ctx Object
---@param traversal_callback Object?  # Default = <null>
---@param traversal_rule Object?  # Default = <null>
function LogicController.bfs_traversal(traversal_ctx, traversal_callback, traversal_rule) end
