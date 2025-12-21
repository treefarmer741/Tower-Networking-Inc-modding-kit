---@meta _
-- Generated API for game version 0.9.1

---@class NetworkControlModule : Node
---@field DHCP_BASE_PERIOD number # Constant value: 10.0
---@field hwaddr_fixed boolean
---@field hardware_address string
---@field network_address string
---@field designated_dns_servers Array<any>
---@field dhcp_enabled string
---@field etc_hosts table<any,any>
---@field lb_back_ports Array<any>
---@field dhcp_timer Timer
---@field is_dhcp_enabled boolean
---@field host_controller LogicController
local NetworkControlModule = {}

function NetworkControlModule.deallocate_addresses() end

---@return TraversalContext
function NetworkControlModule.request_dhcp_options() end

---@param traversal_ctx TraversalContext
---@param cache_to_etchosts boolean?  # Default = false
function NetworkControlModule.resolve_ctx_domain(traversal_ctx, cache_to_etchosts) end

---@param laddr string
---@return Object
function NetworkControlModule.get_resolved_addr(laddr) end

---@param laddr string
function NetworkControlModule.request_dns_cache(laddr) end

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

---@return string
function NetworkControlModule.get_etchost_str() end

---@param cfgs string
function NetworkControlModule.set_etchost_with_configstr(cfgs) end

---@param save_obj Object
function NetworkControlModule.handle_save(save_obj) end

---@param save_obj Object
function NetworkControlModule.handle_load(save_obj) end

---@return Array<string>
function NetworkControlModule.get_save_var_list() end
