---@meta _
-- Generated API for game version 0.10.11

---@class NetworkTap : AlwaysProduce
---@field require_user_traffic boolean
---@field use_limit integer
---@field produce_use_config UseConfig
---@field produce_factor integer
---@field produce_limit_type AlwaysProduce.ProduceLimitType
---@field limit_factor integer
---@field produced_last_tick integer
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
local NetworkTap = {}

---@param thist Object
---@return Object
function NetworkTap.filter_required_traffic(thist) end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function NetworkTap.process_network_packet(pktctl, packet) end

function NetworkTap.tick() end

---@param limit_type AlwaysProduce.ProduceLimitType
---@param lfact integer
---@param node LogicController
---@param pfact integer
---@return Object
function NetworkTap.get_produce_limit(limit_type, lfact, node, pfact) end

---@param node LogicController
---@return Object
function NetworkTap.compute_produce_limit(node) end

function NetworkTap.tick() end

---@param ds string
---@return string
function NetworkTap.colorize_description(ds) end

function NetworkTap.start() end

function NetworkTap.stop() end

function NetworkTap.uninstall() end

---@param _install_opts Object?  # Default = <null>
function NetworkTap.install(_install_opts) end

function NetworkTap.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function NetworkTap.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function NetworkTap.is_pkt_for_self(packet) end
