---@meta _
-- Generated API for game version 0.10.11

---@class NetworkControlModule : LogicControlModule
---@field DHCP_BASE_PERIOD number # Constant value: 10.0
---@field BACK_PORT string # Constant value: backend
---@field STP_BLOCKED string # Constant value: stp-blocked
---@field parent_controller LogicController
---@field local_dns_mapping boolean
---@field hwaddr_fixed boolean
---@field hardware_address string
---@field network_address string
---@field designated_dns_servers Array<any>
---@field dhcp_enabled string
---@field etc_hosts table<any,any>
---@field port_cfg table<any,any>
---@field port_met table<any,any>
---@field stp_state table<any,any>
---@field netw_priority table<any,any>
---@field mbox_cfg table<any,any>
---@field timeout_s table<any,any>
---@field dhcp_timer Timer
---@field stp_timer Timer
---@field is_dhcp_enabled boolean
---@field lb_back_ports Array<any>
---@field stp_enabled boolean
---@field host_controller LogicController
local NetworkControlModule = {}

function NetworkControlModule.deallocate_addresses() end

---@param node Object
---@param _curr_pkt Object
---@return Object
function NetworkControlModule.dhcp_matcher(node, _curr_pkt) end

---@return table<any,any>
function NetworkControlModule.request_dhcp_options() end

---@param domain_name Object
function NetworkControlModule.dns_cache_request(domain_name) end

---@param laddr string
---@return Object
function NetworkControlModule.get_resolved_addr(laddr) end

function NetworkControlModule.reset_hwaddr() end

function NetworkControlModule.reset_all() end

---@param nwaddr string
function NetworkControlModule.set_network_address(nwaddr) end

---@param new_mode string
function NetworkControlModule.set_dhcp_mode(new_mode) end

---@param dns_servers Array<any>
function NetworkControlModule.set_designated_dns_servers(dns_servers) end

---@return Array<string>
function NetworkControlModule.get_save_var_list() end

---@param save_obj Object
function NetworkControlModule.handle_save(save_obj) end

---@param save_obj Object
function NetworkControlModule.handle_load(save_obj) end

function NetworkControlModule.try_schedule_dhcp_request() end

---@param entry Object
---@param val Object
function NetworkControlModule.set_etc_host_entry(entry, val) end

function NetworkControlModule.clear_etc_host() end

---@param cat string
---@param new_timeout number
function NetworkControlModule.set_timeout(cat, new_timeout) end

---@return string
function NetworkControlModule.get_etchost_str() end

---@param cfgs string
function NetworkControlModule.set_etchost_with_configstr(cfgs) end

---@param is_en boolean
function NetworkControlModule.set_stp_mode(is_en) end

---@param key string
---@param value integer
function NetworkControlModule.set_net_priority(key, value) end

---@param key Object
---@return integer
function NetworkControlModule.get_net_priority(key) end

---@param port_id Object
---@param metval integer
function NetworkControlModule.set_port_metric(port_id, metval) end

---@param port_id Object
---@return integer
function NetworkControlModule.get_port_metric(port_id) end

---@param port_id Object
---@param cfg string?  # Default = 
function NetworkControlModule.set_port_config(port_id, cfg) end

---@param port_id string
---@return boolean
function NetworkControlModule.test_port_stp_blocked(port_id) end

function NetworkControlModule.os_startup() end

function NetworkControlModule.os_shutdown() end

function NetworkControlModule.unblock_all_stp_blocks() end

---@param is_en boolean
function NetworkControlModule.set_mbox_hairpin(is_en) end

---@param new_ttl string
function NetworkControlModule.set_mbox_ttl(new_ttl) end

---@param new_rule table<any,any>
function NetworkControlModule.add_mbox_rules(new_rule) end

---@param rule_id integer
function NetworkControlModule.remove_mbox_rule(rule_id) end

function NetworkControlModule.clear_mbox_cfg() end

---@return string
function NetworkControlModule.get_mbox_str() end

---@param cfgs string
function NetworkControlModule.set_mbox_cfgstr(cfgs) end

---@return Array<any>
function NetworkControlModule.get_stp_local_bid() end

function NetworkControlModule.set_as_stp_root() end

---@param root_np string
---@param root_port_id string
---@param path_cost integer
function NetworkControlModule.set_new_stp_root(root_np, root_port_id, path_cost) end

---@return string
function NetworkControlModule.get_stp_root_port_id() end

---@return integer
function NetworkControlModule.get_stp_path_cost() end

---@return string
function NetworkControlModule.get_stp_root_np() end

---@return table<any,any>
function NetworkControlModule.get_stp_port_pdus() end

---@param stp_port_id string
---@param pduval table<any,any>
function NetworkControlModule.set_stp_port_pdu(stp_port_id, pduval) end

---@param packet table<any,any>
function NetworkControlModule.process_bpdu(packet) end

function NetworkControlModule.redo_stp_port_cfg() end

---@param save_obj Object
function NetworkControlModule.handle_save(save_obj) end

---@param save_obj Object
function NetworkControlModule.handle_load(save_obj) end

---@return Array<string>
function NetworkControlModule.get_save_var_list() end
