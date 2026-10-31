---@meta _
-- Generated API for game version 0.13.4

---@class CctvFirmware : TraversalConsume
---@field target_addr string
---@field monitoring boolean
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
local CctvFirmware = {}

---@param addr string
function CctvFirmware.set_target(addr) end

---@param on boolean
function CctvFirmware.set_monitoring(on) end

---@param node LogicController
---@return Object
function CctvFirmware.produce_limit_reached(node) end

---@param node LogicController
---@return Object
function CctvFirmware.compute_produce_limit(node) end

---@return NetworkPacketRoot
function CctvFirmware.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function CctvFirmware.make_traversal_packet(proot) end

---@return NetworkPacketRoot
function CctvFirmware.make_packet_root() end

---@param proot NetworkPacketRoot
---@return Object
function CctvFirmware.make_traversal_packet(proot) end

function CctvFirmware.tick() end

function CctvFirmware.client_sim() end

---@param ds string
---@return string
function CctvFirmware.colorize_description(ds) end

function CctvFirmware.start() end

function CctvFirmware.stop() end

function CctvFirmware.uninstall() end

---@param _install_opts Object?  # Default = <null>
function CctvFirmware.install(_install_opts) end

function CctvFirmware.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return Program.PacketHandling
function CctvFirmware.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function CctvFirmware.is_pkt_for_self(packet) end

---@param packet table<any,any>
---@return boolean
function CctvFirmware.test_routing_exemption(packet) end
