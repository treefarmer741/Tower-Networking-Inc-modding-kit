---@meta _
-- Generated API for game version 0.9.1

---@class DHCPControlModule : Node
---@field option_dns Array<any>
---@field option_prefix string
---@field option_nwaddr_bind table<any,any>
---@field host_controller LogicController
local DHCPControlModule = {}

function DHCPControlModule.reset_all() end

---@param hwaddr string
---@param nwaddr string
function DHCPControlModule.set_option_nwaddr_bind(hwaddr, nwaddr) end

---@param dns_srv_addrs Array<any>
function DHCPControlModule.set_option_dns(dns_srv_addrs) end

---@param naddr_prefix string
function DHCPControlModule.set_option_prefix(naddr_prefix) end

function DHCPControlModule.clear_all_options() end

---@return Array<string>
function DHCPControlModule.get_save_var_list() end

---@param netctl NetworkControlModule
---@return Object
function DHCPControlModule.configure(netctl) end

---@return string
function DHCPControlModule.get_configstr() end

---@param cfgs string
function DHCPControlModule.set_with_configstr(cfgs) end

---@param save_obj Object
function DHCPControlModule.handle_save(save_obj) end

---@param save_obj Object
function DHCPControlModule.handle_load(save_obj) end

---@return Array<string>
function DHCPControlModule.get_save_var_list() end
