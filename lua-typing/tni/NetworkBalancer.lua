---@meta _
-- Generated API for game version 0.10.11

---@class NetworkBalancer : Program
---@field networkctl NetworkControlModule
---@field lbcounter integer
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
local NetworkBalancer = {}

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function NetworkBalancer.process_network_packet(pktctl, packet) end

function NetworkBalancer.tick() end

---@param ds string
---@return string
function NetworkBalancer.colorize_description(ds) end

function NetworkBalancer.start() end

function NetworkBalancer.stop() end

function NetworkBalancer.uninstall() end

---@param _install_opts Object?  # Default = <null>
function NetworkBalancer.install(_install_opts) end

function NetworkBalancer.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function NetworkBalancer.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function NetworkBalancer.is_pkt_for_self(packet) end
