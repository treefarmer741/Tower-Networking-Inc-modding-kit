---@meta _
-- Generated API for game version 0.9.1

---@class TraversalHistoryProduce : Node
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
local TraversalHistoryProduce = {}

---@param thist Object
---@return Object
function TraversalHistoryProduce.filter_required_traffic(thist) end

function TraversalHistoryProduce.tick() end

---@param limit_type AlwaysProduce.ProduceLimitType
---@param lfact integer
---@param node LogicController
---@param pfact integer
---@return Object
function TraversalHistoryProduce.get_produce_limit(limit_type, lfact, node, pfact) end

---@param node LogicController
---@return Object
function TraversalHistoryProduce.compute_produce_limit(node) end

function TraversalHistoryProduce.tick() end

---@param ds string
---@return string
function TraversalHistoryProduce.colorize_description(ds) end

function TraversalHistoryProduce.start() end

function TraversalHistoryProduce.stop() end

function TraversalHistoryProduce.uninstall() end

---@param _install_opts Object?  # Default = <null>
function TraversalHistoryProduce.install(_install_opts) end

function TraversalHistoryProduce.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function TraversalHistoryProduce.process_network_packet(pktctl, packet) end
