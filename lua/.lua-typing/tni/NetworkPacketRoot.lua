---@meta _
-- Generated API for game version 0.10.0

---@class NetworkPacketRoot : RefCounted
---@field default_ttl integer # Constant value: 32
---@field default_request_timeout number # Constant value: 3.3
---@field timeout_seconds number
---@field src_controller LogicController
---@field src_packetctl PacketControlModule
---@field src_networkctl NetworkControlModule
---@field src_controller_np string
---@field src_hwaddr string
---@field src_nwaddr string
---@field allow_user_nodes boolean
---@field allow_link_nodes boolean
---@field src_request_terminated boolean
---@field is_from_user boolean
---@field first_matched_result Object
---@field matched_results Array<any>
---@field total_bw_consumed integer
---@field err_callback (Callable|function)
---@field timeout_callback (Callable|function)
---@field node_access_callback (Callable|function)
---@field match_callback (Callable|function)
---@field matcher_callback (Callable|function)
---@field offline_callback (Callable|function)
---@field adhoc_counter integer
---@field adhoc_flag boolean
---@field packet_drop_reasons table<any,any>
local NetworkPacketRoot = {}
---@enum NetworkPacketRoot.Err
NetworkPacketRoot.Err = {
	["NO_ERROR"] = 0,
	["NO_DNS_SERVER"] = 1,
	["NO_DNS_ENTRY"] = 2,
	["SRC_OUT_OF_BANDWIDTH"] = 3,
	["NO_SRC_NETWORK_ADDR"] = 4,
	["BAD_ADDRESS"] = 5,
	["DHCP_ADDRESS_CONFLICT"] = 6,
	["NO_COMPATIBLE_USES_LEFT"] = 7,
	["SRC_OFFLINE"] = 8,
	["NO_DHCP_SERVER"] = 9,
}

---@param src_ LogicController
---@return NetworkPacketRoot
function NetworkPacketRoot.create_packet_root(src_) end

---@param traffic_class_ string
---@param traffic_weight_ integer
---@param data_ string
---@param dst_laddr_ string?  # Default = 
---@param ttl_ integer?  # Default = 32
---@return table<any,any>
function NetworkPacketRoot.get_packet(traffic_class_, traffic_weight_, data_, dst_laddr_, ttl_) end

function NetworkPacketRoot.clear_timeout_signal() end

---@param stree SceneTree
---@param timeout_s number
function NetworkPacketRoot.set_synchronous_timeout(stree, timeout_s) end

---@param hopped_node LogicController
---@param curr_pkt table<any,any>
function NetworkPacketRoot.try_access_hopped_node(hopped_node, curr_pkt) end

function NetworkPacketRoot.reset_conn() end

function NetworkPacketRoot.sync_root_termination() end

function NetworkPacketRoot.set_no_termination_on_match() end

---@return Object
function NetworkPacketRoot.get_packet_drop_reason_sa() end

---@param reason_str string
function NetworkPacketRoot.account_packet_drop_reason(reason_str) end

---@param pkt table<any,any>
---@param enable_timeout Object?  # Default = true
---@return table<any,any>
function NetworkPacketRoot.asynchronous_send_packet(pkt, enable_timeout) end

---@param domain_name string
---@return table<any,any>
function NetworkPacketRoot.send_sync_desigdns_request(domain_name) end

---@param pkt table<any,any>
---@return Object
function NetworkPacketRoot.get_hop_count(pkt) end

---@param pkt table<any,any>
---@param h Object
function NetworkPacketRoot.set_trvtgthost(pkt, h) end

---@param domain_name string
---@param dns_srv_addr string?  # Default = 
---@return table<any,any>
function NetworkPacketRoot.send_sync_dns_request(domain_name, dns_srv_addr) end
