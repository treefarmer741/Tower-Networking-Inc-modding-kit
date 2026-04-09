---@meta _
-- Generated API for game version 0.10.11

---@class PacketProcessorsMiddlebox : Program
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
local PacketProcessorsMiddlebox = {}

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function PacketProcessorsMiddlebox.process_network_packet(pktctl, packet) end

---@param ds string
---@return string
function PacketProcessorsMiddlebox.colorize_description(ds) end

function PacketProcessorsMiddlebox.start() end

function PacketProcessorsMiddlebox.stop() end

function PacketProcessorsMiddlebox.uninstall() end

---@param _install_opts Object?  # Default = <null>
function PacketProcessorsMiddlebox.install(_install_opts) end

function PacketProcessorsMiddlebox.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
---@return boolean
function PacketProcessorsMiddlebox.process_network_packet(pktctl, packet) end

---@param packet table<any,any>
---@return boolean
function PacketProcessorsMiddlebox.is_pkt_for_self(packet) end
