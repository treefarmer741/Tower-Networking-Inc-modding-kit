---@meta _
-- Generated API for game version 0.9.1

---@class RoutingRule : RefCounted
---@field key string
---@field num integer
---@field prefix_length integer
---@field is_default boolean
---@field src_port_id string
---@field src_addr string
---@field dst_addr string
---@field traffic_class string
---@field src_port_id_s string
---@field src_addr_s string
---@field dst_addr_s string
---@field traffic_class_s string
local RoutingRule = {}

---@return Object
function RoutingRule.as_routing_table_entry() end

---@param rt_entry string
---@return RoutingRule
function RoutingRule.from_routing_table_entry(rt_entry) end

---@param context TraversalContext
---@return boolean
function RoutingRule.is_matched(context) end
