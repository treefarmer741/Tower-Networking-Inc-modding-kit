---@meta _
-- Generated API for game version 0.9.1

---@class FirewallControlModule : Node
---@field firewall_table Array<any>
---@field default_firewall_policy_allows boolean
---@field host_controller LogicController
local FirewallControlModule = {}

function FirewallControlModule.reset_all() end

---@param default_policy_allow boolean
function FirewallControlModule.set_default_firewall_policy(default_policy_allow) end

---@param re string
function FirewallControlModule.add_rule(re) end

---@param re string
function FirewallControlModule.remove_rule(re) end

function FirewallControlModule.clear_fw_table() end

---@return Array<string>
function FirewallControlModule.get_save_var_list() end

---@return string
function FirewallControlModule.get_configstr() end

---@param cfgs string
function FirewallControlModule.set_with_configstr(cfgs) end

---@param save_obj Object
function FirewallControlModule.handle_save(save_obj) end

---@param save_obj Object
function FirewallControlModule.handle_load(save_obj) end

---@return Array<string>
function FirewallControlModule.get_save_var_list() end
