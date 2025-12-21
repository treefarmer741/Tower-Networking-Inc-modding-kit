---@meta _
-- Generated API for game version 0.9.1

---@class TraversalBase : Node
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
local TraversalBase = {}
---@enum TraversalBase.Context
TraversalBase.Context = {
	["SRC_CONTROLLER"] = 0,
	["BANDWIDTH_USED"] = 1,
	["CONSUMED_TARGET"] = 2,
	["DST_FQDN"] = 3,
	["DST_LADDR"] = 4,
	["TEST"] = 5,
	["INDEX"] = 6,
	["TTL"] = 7,
}

---@param from_node LogicController
---@param via_port LogicControllerSocket
---@param context TraversalContext
---@return boolean
function TraversalBase.check_routability(from_node, via_port, context) end

---@param next_node LogicController
---@param context TraversalContext
---@return Object
function TraversalBase.check_filter_passage(next_node, context) end

---@param context TraversalContext
---@param from_node LogicController
---@param via_port Object
---@param current_depth Object
---@return boolean
function TraversalBase.check_traversibility(context, from_node, via_port, current_depth) end

---@param context TraversalContext
---@param node LogicController
---@param via_port Object
---@param current_index Object
---@param current_depth Object
---@return GraphController.Traversal
function TraversalBase.precallback_process(context, node, via_port, current_index, current_depth) end

function TraversalBase.tick() end

---@param ds string
---@return string
function TraversalBase.colorize_description(ds) end

function TraversalBase.start() end

function TraversalBase.stop() end

function TraversalBase.uninstall() end

---@param _install_opts Object?  # Default = <null>
function TraversalBase.install(_install_opts) end

function TraversalBase.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function TraversalBase.process_network_packet(pktctl, packet) end
