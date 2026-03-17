---@meta _
-- Generated API for game version 0.10.0

---@class UseStorage : Node
---@field stored_use_stack table<any,any>
---@field stored_use_config UseConfig
---@field storage_factor integer
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
local UseStorage = {}

function UseStorage.tick() end

---@param ds string
---@return string
function UseStorage.colorize_description(ds) end

function UseStorage.start() end

function UseStorage.stop() end

function UseStorage.uninstall() end

---@param _install_opts Object?  # Default = <null>
function UseStorage.install(_install_opts) end

function UseStorage.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function UseStorage.process_network_packet(pktctl, packet) end
