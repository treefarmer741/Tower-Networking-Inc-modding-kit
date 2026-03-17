---@meta _
-- Generated API for game version 0.10.0

---@class AlwaysProduce : Node
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
local AlwaysProduce = {}
---@enum AlwaysProduce.ProduceLimitType
AlwaysProduce.ProduceLimitType = {
	["LIMITED_BY_PRODUCE_FACTOR"] = 0,
	["LIMITED_BY_TARGET_FREE_MEMORY"] = 1,
	["LIMITED_BY_LIMIT_FACTOR"] = 2,
	["LIMITED_BY_TARGET_TOTAL_MEM"] = 3,
	["LIMITED_BY_TARGET_TOTAL_CPU"] = 4,
	["LIMITED_BY_TARGET_TOTAL_STORAGE"] = 5,
}

---@param limit_type AlwaysProduce.ProduceLimitType
---@param lfact integer
---@param node LogicController
---@param pfact integer
---@return Object
function AlwaysProduce.get_produce_limit(limit_type, lfact, node, pfact) end

---@param node LogicController
---@return Object
function AlwaysProduce.compute_produce_limit(node) end

function AlwaysProduce.tick() end

---@param ds string
---@return string
function AlwaysProduce.colorize_description(ds) end

function AlwaysProduce.start() end

function AlwaysProduce.stop() end

function AlwaysProduce.uninstall() end

---@param _install_opts Object?  # Default = <null>
function AlwaysProduce.install(_install_opts) end

function AlwaysProduce.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function AlwaysProduce.process_network_packet(pktctl, packet) end
