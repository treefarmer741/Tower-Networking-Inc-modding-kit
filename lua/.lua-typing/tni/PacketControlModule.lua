---@meta _
-- Generated API for game version 0.9.1

---@class PacketControlModule : Node
---@field clk_timer Timer
---@field packet_in_queue Array<any>
---@field packet_out_queue table<any,any>
---@field host_controller LogicController
local PacketControlModule = {}

---@param packet table<any,any>
---@param port_id string
function PacketControlModule.add_packet_to_out_queue(packet, port_id) end

---@param new_pkt Object
function PacketControlModule.receive_packet(new_pkt) end

---@param packet table<any,any>
---@param next_in Array<any>
function PacketControlModule.preprocess_packets(packet, next_in) end

---@param packet table<any,any>
function PacketControlModule.postprocess_packets(packet) end

---@param traffic_class string
---@param traffic_weight integer
---@param data string
---@param dst_addr Object?  # Default = <null>
function PacketControlModule.create_network_request(traffic_class, traffic_weight, data, dst_addr) end

---@param save_obj Object
function PacketControlModule.handle_save(save_obj) end

---@param save_obj Object
function PacketControlModule.handle_load(save_obj) end

---@return Array<string>
function PacketControlModule.get_save_var_list() end
