---@meta _
-- Generated API for game version 0.9.1

---@class DoNothing : Node
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
local DoNothing = {}

function DoNothing.tick() end

---@param ds string
---@return string
function DoNothing.colorize_description(ds) end

function DoNothing.start() end

function DoNothing.stop() end

function DoNothing.uninstall() end

---@param _install_opts Object?  # Default = <null>
function DoNothing.install(_install_opts) end

function DoNothing.tick() end

---@param pktctl PacketControlModule
---@param packet table<any,any>
function DoNothing.process_network_packet(pktctl, packet) end
