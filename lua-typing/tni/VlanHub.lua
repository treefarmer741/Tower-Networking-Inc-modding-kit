---@meta _
-- Generated API for game version 0.10.11

---@class VlanHub : Program
---@field vlanctl VLANControlModule
---@field networkctl NetworkControlModule
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
local VlanHub = {}

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function VlanHub.process_network_packet(pktctl, packet) end

function VlanHub.tick() end

---@param ds string
---@return string
function VlanHub.colorize_description(ds) end

function VlanHub.start() end

function VlanHub.stop() end

function VlanHub.uninstall() end

---@param _install_opts Object?  # Default = <null>
function VlanHub.install(_install_opts) end

function VlanHub.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function VlanHub.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function VlanHub.is_pkt_for_self(packet) end
