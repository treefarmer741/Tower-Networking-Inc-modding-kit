---@meta _
-- Generated API for game version 0.12.1

---@class ScaledTraversalConsume : TraversalConsume
---@field disconnect_grace_ticks integer
---@field consume_mode ScaledTraversalConsume.ConsumeMode
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
---@field gpu_load integer
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
---@field gw_playopt PlayOptions
---@field host_controller LogicController
local ScaledTraversalConsume = {}
---@enum ScaledTraversalConsume.ConsumeMode
ScaledTraversalConsume.ConsumeMode = {
	["PER_NODE_UNITS"] = 0,
	["AGGREGATE_ARRAY"] = 1,
}

---@return NetworkPacketRoot
function ScaledTraversalConsume.make_packet_root() end

function ScaledTraversalConsume.tick() end

function ScaledTraversalConsume.stop() end

---@param node LogicController
---@return Object
function ScaledTraversalConsume.produce_limit_reached(node) end

---@param node LogicController
---@return Object
function ScaledTraversalConsume.compute_produce_limit(node) end

---@return NetworkPacketRoot
function ScaledTraversalConsume.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function ScaledTraversalConsume.make_traversal_packet(proot) end

---@return NetworkPacketRoot
function ScaledTraversalConsume.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function ScaledTraversalConsume.make_traversal_packet(proot) end

function ScaledTraversalConsume.tick() end

function ScaledTraversalConsume.client_sim() end

---@param ds string
---@return string
function ScaledTraversalConsume.colorize_description(ds) end

function ScaledTraversalConsume.start() end

function ScaledTraversalConsume.stop() end

function ScaledTraversalConsume.uninstall() end

---@param _install_opts Object?  # Default = <null>
function ScaledTraversalConsume.install(_install_opts) end

function ScaledTraversalConsume.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function ScaledTraversalConsume.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function ScaledTraversalConsume.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function ScaledTraversalConsume.test_routing_exemption(packet) end
