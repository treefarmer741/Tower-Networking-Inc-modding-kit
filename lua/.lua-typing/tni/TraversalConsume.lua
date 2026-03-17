---@meta _
-- Generated API for game version 0.10.0

---@class TraversalConsume : Node
---@field produce_use_config UseConfig
---@field produce_target TraversalConsume.ProductTarget
---@field produce_factor integer
---@field conversion_policy TraversalConsume.ConversionPolicy
---@field produce_limit_type AlwaysProduce.ProduceLimitType
---@field limit_factor integer
---@field consumption_policy TraversalConsume.ConsumptionPolicy
---@field consume_use_config UseConfig
---@field consume_factor integer
---@field allow_localhost_consumption boolean
---@field allow_user_consumption boolean
---@field produced_last_tick integer
---@field will_produce boolean
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
local TraversalConsume = {}
---@enum TraversalConsume.ProductTarget
TraversalConsume.ProductTarget = {
	["SOURCE"] = 0,
	["DESTINATION"] = 1,
}
---@enum TraversalConsume.ConversionPolicy
TraversalConsume.ConversionPolicy = {
	["SKIP_CONSUME_ON_HOST_IF_LIMIT_REACHED"] = 0,
	["ALWAYS_CONSUME_REGARDLESS_OF_PRODUCE_LIMIT"] = 1,
}
---@enum TraversalConsume.ConsumptionPolicy
TraversalConsume.ConsumptionPolicy = {
	["ALL_OR_NOTHING"] = 0,
	["FRAGMENTED_USE_ALLOWED"] = 1,
}

---@param node LogicController
---@return Object
function TraversalConsume.produce_limit_reached(node) end

---@param node LogicController
---@return Object
function TraversalConsume.compute_produce_limit(node) end

---@return NetworkPacketRoot
function TraversalConsume.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function TraversalConsume.make_traversal_packet(proot) end

---@param from_node LogicController
---@param via_port LogicControllerSocket
---@param context TraversalContext
---@return boolean
function TraversalConsume.check_routability(from_node, via_port, context) end

---@param next_node LogicController
---@param context TraversalContext
---@return Object
function TraversalConsume.check_filter_passage(next_node, context) end

---@param context TraversalContext
---@param from_node LogicController
---@param via_port Object
---@param current_depth Object
---@return boolean
function TraversalConsume.check_traversibility(context, from_node, via_port, current_depth) end

---@param context TraversalContext
---@param node LogicController
---@param via_port Object
---@param current_index Object
---@param current_depth Object
---@return GraphController.Traversal
function TraversalConsume.precallback_process(context, node, via_port, current_index, current_depth) end

---@return NetworkPacketRoot
function TraversalConsume.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function TraversalConsume.make_traversal_packet(proot) end

function TraversalConsume.tick() end

---@param ds string
---@return string
function TraversalConsume.colorize_description(ds) end

function TraversalConsume.start() end

function TraversalConsume.stop() end

function TraversalConsume.uninstall() end

---@param _install_opts Object?  # Default = <null>
function TraversalConsume.install(_install_opts) end

function TraversalConsume.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function TraversalConsume.process_network_packet(pktctl, packet) end
