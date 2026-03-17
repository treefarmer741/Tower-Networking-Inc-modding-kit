---@meta _
-- Generated API for game version 0.10.0

---@class DecentroNode : Node
---@field decentro_currency_use_config UseConfig
---@field decentro_count_last_tick table<any,any>
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
local DecentroNode = {}

function DecentroNode.tick() end

---@param intended_volume integer
---@param price_per_currency integer
---@param arbitrage integer
function DecentroNode.perform_decentro_trade(intended_volume, price_per_currency, arbitrage) end

---@param limit_type AlwaysProduce.ProduceLimitType
---@param lfact integer
---@param node LogicController
---@param pfact integer
---@return Object
function DecentroNode.get_produce_limit(limit_type, lfact, node, pfact) end

---@param node LogicController
---@return Object
function DecentroNode.compute_produce_limit(node) end

function DecentroNode.tick() end

---@param ds string
---@return string
function DecentroNode.colorize_description(ds) end

function DecentroNode.start() end

function DecentroNode.stop() end

function DecentroNode.uninstall() end

---@param _install_opts Object?  # Default = <null>
function DecentroNode.install(_install_opts) end

function DecentroNode.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function DecentroNode.process_network_packet(pktctl, packet) end
