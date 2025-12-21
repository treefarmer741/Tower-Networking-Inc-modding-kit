---@meta _
-- Generated API for game version 0.9.1

---@class TraversalContextRule : RefCounted
---@field RESTRICTED_WORDS Array<any> # Constant value: ["any", "to", "from", "on", "using", "traffic", "via", "*", "."]
---@field is_default boolean
---@field src_port_id string
---@field src_addr string
---@field dst_addr string
---@field traffic_class string
---@field src_port_id_s string
---@field src_addr_s string
---@field dst_addr_s string
---@field traffic_class_s string
local TraversalContextRule = {}

---@param context TraversalContext
---@return boolean
function TraversalContextRule.is_matched(context) end
