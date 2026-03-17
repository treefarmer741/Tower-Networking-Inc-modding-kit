---@meta _
-- Generated API for game version 0.10.0

---@class FirewallPolicy : RefCounted
---@field allow_policy boolean
---@field policy_s string
---@field is_default boolean
---@field src_port_id string
---@field src_addr string
---@field dst_addr string
---@field traffic_class string
---@field src_port_id_s string
---@field src_addr_s string
---@field dst_addr_s string
---@field traffic_class_s string
local FirewallPolicy = {}

---@return Object
function FirewallPolicy.as_firewall_table_entry() end

---@param rt_entry string
---@return FirewallPolicy
function FirewallPolicy.from_firewall_table_entry(rt_entry) end

---@param context TraversalContext
---@return boolean
function FirewallPolicy.will_allow(context) end

---@param context TraversalContext
---@return boolean
function FirewallPolicy.will_deny(context) end

---@param context TraversalContext
---@return boolean
function FirewallPolicy.is_matched(context) end

---@param packet table<any,any>
---@return boolean
function FirewallPolicy.is_packet_matched(packet) end

---@param context TraversalContext
---@return boolean
function FirewallPolicy.is_matched(context) end

---@param packet table<any,any>
---@return boolean
function FirewallPolicy.is_packet_matched(packet) end
