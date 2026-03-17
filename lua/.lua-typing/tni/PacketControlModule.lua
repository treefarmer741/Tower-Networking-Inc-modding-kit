---@meta _
-- Generated API for game version 0.10.0

---@class PacketControlModule : Node
---@field default_clock_period number # Constant value: 0.1
---@field clk_timer Timer
---@field packet_in_queue Array<Dictionary>
---@field packet_out_queue table<string,Array>
---@field nbw_consumed_this_tick integer
---@field nwaddr_required_for_sending boolean
---@field local_dns_mapping boolean
---@field parent_controller LogicController
---@field host_controller LogicController
local PacketControlModule = {}

---@return boolean
function PacketControlModule.is_bandwidth_exceeded() end

---@param new_pkt table<any,any>
---@return boolean
function PacketControlModule.receive_packet(new_pkt) end

---@param packet table<any,any>
---@param port_id string
function PacketControlModule.copy_packet_to_out_queue(packet, port_id) end

---@param packet table<any,any>
---@param port_id string
function PacketControlModule.put_packet_to_out_queue(packet, port_id) end

function PacketControlModule.refresh() end

function PacketControlModule.stop() end

function PacketControlModule.reset() end

function PacketControlModule.flush_out_queue() end

---@param pkt Object
function PacketControlModule.broadcast_pkt_as_hub(pkt) end

---@param save_obj Object
function PacketControlModule.handle_save(save_obj) end

---@param save_obj Object
function PacketControlModule.handle_load(save_obj) end

---@return Array<string>
function PacketControlModule.get_save_var_list() end
