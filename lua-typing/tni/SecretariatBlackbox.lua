---@meta _
-- Generated API for game version 0.13.1

---@class SecretariatBlackbox : TraversalConsume
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
local SecretariatBlackbox = {}

---@param _curr_pkt Object
function SecretariatBlackbox.record_censored_visit(_curr_pkt) end

---@param node LogicController
---@return Object
function SecretariatBlackbox.produce_limit_reached(node) end

---@param node LogicController
---@return Object
function SecretariatBlackbox.compute_produce_limit(node) end

---@return NetworkPacketRoot
function SecretariatBlackbox.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function SecretariatBlackbox.make_traversal_packet(proot) end

---@return NetworkPacketRoot
function SecretariatBlackbox.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function SecretariatBlackbox.make_traversal_packet(proot) end

function SecretariatBlackbox.tick() end

function SecretariatBlackbox.client_sim() end

---@param ds string
---@return string
function SecretariatBlackbox.colorize_description(ds) end

function SecretariatBlackbox.start() end

function SecretariatBlackbox.stop() end

function SecretariatBlackbox.uninstall() end

---@param _install_opts Object?  # Default = <null>
function SecretariatBlackbox.install(_install_opts) end

function SecretariatBlackbox.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function SecretariatBlackbox.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function SecretariatBlackbox.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function SecretariatBlackbox.test_routing_exemption(packet) end
