---@meta _
-- Generated API for game version 0.10.11

---@class NetworkFirewall : Program
---@field firewallctl FirewallControlModule
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
local NetworkFirewall = {}

---@param _pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function NetworkFirewall.process_network_packet(_pktctl, packet) end

function NetworkFirewall.tick() end

---@param ds string
---@return string
function NetworkFirewall.colorize_description(ds) end

function NetworkFirewall.start() end

function NetworkFirewall.stop() end

function NetworkFirewall.uninstall() end

---@param _install_opts Object?  # Default = <null>
function NetworkFirewall.install(_install_opts) end

function NetworkFirewall.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function NetworkFirewall.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function NetworkFirewall.is_pkt_for_self(packet) end
