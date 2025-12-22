---@meta _
-- Generated API for game version 0.9.1

---@class NetworkHub : Node
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
local NetworkHub = {}

---@param pktctl PacketControlModule
---@param packet table<any,any>
function NetworkHub.process_network_packet(pktctl, packet) end

function NetworkHub.tick() end

---@param ds string
---@return string
function NetworkHub.colorize_description(ds) end

function NetworkHub.start() end

function NetworkHub.stop() end

function NetworkHub.uninstall() end

---@param _install_opts Object?  # Default = <null>
function NetworkHub.install(_install_opts) end

function NetworkHub.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function NetworkHub.process_network_packet(pktctl, packet) end
