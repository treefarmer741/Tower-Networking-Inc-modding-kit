---@meta _
-- Generated API for game version 0.9.1

---@class TraversalContext : RefCounted
---@field src_controller LogicController
---@field traffic_class string
---@field traffic_weight integer
---@field request_data string
---@field result_code TraversalContext.ResultType
---@field consume_use_config UseConfig
---@field is_from_user boolean
---@field vlan_tag string
---@field visit_hist table<any,any>
---@field allow_direct_hops_from_routers boolean
---@field dst_laddr Object
---@field dst_controller LogicController
---@field consume_success boolean
---@field discarded_because_insufficient_bw boolean
---@field allow_user_nodes boolean
---@field allow_link_nodes boolean
---@field search_results Array<any>
---@field search_criterion Object
---@field count_results table<any,any>
---@field counter_a integer
---@field counter_b integer
---@field max_ttl integer
---@field index integer
---@field depth integer
---@field total_hosts_visited integer
---@field dst_fqdn string
---@field traversal_target_host Object
---@field add_bw_consumed integer
---@field last_visited_port LogicControllerSocket
---@field stdout Object
---@field failed boolean
---@field cached_src_hwaddr string
---@field cached_src_nwaddr string
---@field total_bw_consumed integer
---@field ttl integer
---@field hop1_interfaces Array<any>
local TraversalContext = {}
---@enum TraversalContext.ResultType
TraversalContext.ResultType = {
	["NO_ERROR"] = 0,
	["NO_DNS"] = 1,
	["NO_DNS_ENTRY"] = 2,
	["NO_COMPATIBLE_USES_LEFT"] = 3,
	["ADDRESS_CONFLICT"] = 4,
	["NO_SRC_NETWORK_ADDR"] = 5,
}

---@param node LogicController
---@param on_tag string
function TraversalContext.record_visit(node, on_tag) end

---@param node LogicController
---@param on_tag string
---@return Object
function TraversalContext.has_traversed_before(node, on_tag) end
