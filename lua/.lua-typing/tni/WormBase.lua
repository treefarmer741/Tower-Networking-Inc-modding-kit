---@meta _
-- Generated API for game version 0.9.1

---@class WormBase : Node
---@field release_name_template string
---@field max_spread_per_tick integer
---@field signature string
---@field vulnerable_device_types Array<any>
---@field incubation_cycles integer
---@field incubation_ctr integer
---@field traffic_class string
---@field traffic_weight integer
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
local WormBase = {}

---@param from_node LogicController
---@param via_port LogicControllerSocket
---@param context TraversalContext
---@return boolean
function WormBase.check_routability(from_node, via_port, context) end

---@param next_node LogicController
---@param context TraversalContext
---@return Object
function WormBase.check_filter_passage(next_node, context) end

---@param context TraversalContext
---@param from_node LogicController
---@param via_port Object
---@param current_depth Object
---@return boolean
function WormBase.check_traversibility(context, from_node, via_port, current_depth) end

---@param context TraversalContext
---@param node LogicController
---@param via_port Object
---@param current_index Object
---@param current_depth Object
---@return GraphController.Traversal
function WormBase.precallback_process(context, node, via_port, current_index, current_depth) end

function WormBase.tick() end

---@param ds string
---@return string
function WormBase.colorize_description(ds) end

function WormBase.start() end

function WormBase.stop() end

function WormBase.uninstall() end

---@param _install_opts Object?  # Default = <null>
function WormBase.install(_install_opts) end

function WormBase.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function WormBase.process_network_packet(pktctl, packet) end
