---@meta _
-- Generated API for game version 0.10.11

---@class HaRouter : NetworkRouterImpl
---@field routectl RouteControlModule
---@field cpu_load integer
---@field code_size integer
---@field stack_size integer
---@field release_name string
---@field description string
---@field modifiers Array<any>
---@field application_unlocks Array<any>
---@field required_hardware_device Array<any>
---@field data_size integer
---@field install_size integer
---@field rendered_description string
---@field pkt_processing_priority integer
---@field is_running boolean
---@field host_controller LogicController
local HaRouter = {}

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function HaRouter.process_network_packet(pktctl, packet) end

function HaRouter.tick() end

---@param hc Object
---@param pktctl Object
---@param rtctl Object
---@param packet Object
---@return Object
function HaRouter.get_longest_matched_port(hc, pktctl, rtctl, packet) end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function HaRouter.process_network_packet(pktctl, packet) end

---@param src_node_controller LogicController
---@param hopped_node_controller LogicController
---@param rcpt_port_id string
---@param src_port_id string
function HaRouter.update_routes_from_rip_packet(src_node_controller, hopped_node_controller, rcpt_port_id, src_port_id) end

---@param ds string
---@return string
function HaRouter.colorize_description(ds) end

function HaRouter.start() end

function HaRouter.stop() end

function HaRouter.uninstall() end

---@param _install_opts Object?  # Default = <null>
function HaRouter.install(_install_opts) end

function HaRouter.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function HaRouter.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function HaRouter.is_pkt_for_self(packet) end
